#include <lmic.h>
#include <hal/hal.h>
#include <SPI.h>
#include "ArduinoLowPower.h"
#include "auth.h"


#define FOODSAMPLER_ID 7
#define HEARTBEAT_INTERVAL 600000  //in milliseconds (10 min)
#define CUE_TRANSMIT_INTERVAL 60000  //in milliseconds (1 min)

#define CUELENGTH 60
uint8_t sendCue[CUELENGTH];
uint8_t cueCounter = 0;

#define SETCLOCK 0

#define YEAR  2019
#define MONTH    6
#define DAY     21
#define HOUR    16
#define MIN     41
#define SEC      0

RTCZero rtc;

#define BUT1   5
#define BUT2   11
#define BUT3   0
#define BUT4   1
#define BUT5   A5
#define BUT6   A3
#define BUT7   A1
#define BATPIN A7

#define LED1   10
#define LED2   12
#define LED3   20
#define LED4   21
#define LED5   18
#define LED6   16
#define LED7   A0

#define LED    13


bool buttonFlag = false;
bool wakeUpFlag = false;

bool sending=false;

// Schedule TX every this many seconds (might become longer due to duty
// cycle limitations).
const unsigned TX_INTERVAL = 180;

// This EUI must be in little-endian format, so least-significant-byte
// first. When copying an EUI from ttnctl output, this means to reverse
// the bytes. For TTN issued EUIs the last bytes should be 0xD5, 0xB3,
// 0x70.
void os_getArtEui (u1_t* buf) {
  memcpy_P(buf, APPEUI, 8);
}

// This should also be in little endian format, see above.
//static const u1_t PROGMEM DEVEUI[8]=DEVEUI_ARRAY[0];
void os_getDevEui (u1_t* buf) {
  memcpy_P(buf, DEVEUI_ARRAY[FOODSAMPLER_ID], 8);
}

// This key should be in big endian format (or, since it is not really a
// number but a block of memory, endianness does not really apply). In
// practice, a key taken from ttnctl can be copied as-is.
void os_getDevKey (u1_t* buf) {
  memcpy_P(buf, APPKEY, 16);
}

static uint8_t mydata[3];
static osjob_t sendjob;

boolean packedQueued = false;
boolean networkJoined=false;

// Pin mapping for Adafruit Feather M0 LoRa
const lmic_pinmap lmic_pins = {
  .nss = 8,
  .rxtx = LMIC_UNUSED_PIN,
  .rst = 4,
  .dio = {3, 6, LMIC_UNUSED_PIN},
  .rxtx_rx_active = 0,
  .rssi_cal = 8,                  // LBT cal for the Adafruit Feather M0 LoRa, in dB
  .spi_freq = 8000000,
};

void onEvent (ev_t ev) {
  Serial.print(os_getTime());
  Serial.print(": ");
  switch (ev) {
    case EV_SCAN_TIMEOUT:
      Serial.println(F("EV_SCAN_TIMEOUT"));
      break;
    case EV_BEACON_FOUND:
      Serial.println(F("EV_BEACON_FOUND"));
      break;
    case EV_BEACON_MISSED:
      Serial.println(F("EV_BEACON_MISSED"));
      break;
    case EV_BEACON_TRACKED:
      Serial.println(F("EV_BEACON_TRACKED"));
      break;
    case EV_JOINING:
      Serial.println(F("EV_JOINING"));
      connectFlash();
      break;
    case EV_JOINED:
      Serial.println(F("EV_JOINED"));

      // Disable link check validation (automatically enabled
      // during join, but because slow data rates change max TX
      // size, we don't use it in this example.
      LMIC_setLinkCheckMode(0);
      stopFlashing();
      networkJoined=true;
      activateSleepMode(HEARTBEAT_INTERVAL);
      break;
    /*
      || This event is defined but not used in the code. No
      || point in wasting codespace on it.
      ||
      || case EV_RFU1:
      ||     Serial.println(F("EV_RFU1"));
      ||     break;
    */
    case EV_JOIN_FAILED:
      Serial.println(F("EV_JOIN_FAILED"));
      stopFlashing();
      networkJoined=false;
      activateSleepMode(HEARTBEAT_INTERVAL);
      break;
    case EV_REJOIN_FAILED:
      Serial.println(F("EV_REJOIN_FAILED"));
      networkJoined=false;
      break;
    case EV_TXCOMPLETE:
      Serial.println(F("EV_TXCOMPLETE (includes waiting for RX windows)"));
      printTXRXFlags();
      printCue();
      printSeqnoUp ();
      printSeqnoDn ();  
      stopFlashing();
      sending=false;


      Serial.println("----------------------------");
      
      if (LMIC.txrxFlags & TXRX_ACK)
        Serial.println(F("Received ack"));
      if (LMIC.dataLen) {
        Serial.print(F("Received "));
        Serial.print(LMIC.dataLen);
        Serial.println(F(" bytes of payload"));
      }
      // Schedule next transmission

      // go to sleep mode here.
      os_setTimedCallback(&sendjob, os_getTime() + sec2osticks(TX_INTERVAL), do_send);


      //USBDevice.detach();
      digitalWrite(LED, LOW);
      if (cueCounter > 0){
        activateSleepMode(CUE_TRANSMIT_INTERVAL);
      }else{
        activateSleepMode(HEARTBEAT_INTERVAL);
      }                  
      break;

    case EV_LOST_TSYNC:
      Serial.println(F("EV_LOST_TSYNC"));
      break;
    case EV_RESET:
      Serial.println(F("EV_RESET"));
      break;
    case EV_RXCOMPLETE:
      // data received in ping slot
      Serial.println(F("EV_RXCOMPLETE"));
      break;
    case EV_LINK_DEAD:
      Serial.println(F("EV_LINK_DEAD"));
      break;
    case EV_LINK_ALIVE:
      Serial.println(F("EV_LINK_ALIVE"));
      break;
    /*
      || This event is defined but not used in the code. No
      || point in wasting codespace on it.
      ||
      || case EV_SCAN_FOUND:
      ||    Serial.println(F("EV_SCAN_FOUND"));
      ||    break;
    */
    case EV_TXSTART:
      Serial.println(F("EV_TXSTART"));
      break;
    default:
      Serial.print(F("Unknown event: "));
      Serial.println((unsigned) ev);
      break;
  }
}

void do_send(osjob_t* j) {
  // Check if there is not a current TX/RX job running
  if (LMIC.opmode & OP_TXRXPEND) {
    Serial.println(F("OP_TXRXPEND, not sending"));
    stopFlashing();
  } else {
    sending=true;
    // Prepare upstream data transmission at the next possible time.
    LMIC_setTxData2(1, mydata, sizeof(mydata), 1);
    Serial.println(F("Packet queued"));
    printSeqnoUp ();
    printSeqnoDn ();    
    if (packedQueued && cueCounter > 0) {
      shiftCue();
      packedQueued = false;
    }

  }
  // Next TX is scheduled after TX_COMPLETE event.
}


void setup() {
  Serial.begin(9600);
  Serial.println(F("Starting"));

  initIO();
  printBatteryStatus();


  if ( SETCLOCK ) {
    initRTC();
  }
  
  LowPower.attachInterruptWakeup(RTC_ALARM_WAKEUP, wakeUpTimeOut, CHANGE);

  initLmic();
  sendFlash();
}


void loop() {
  os_runloop_once();
  debugLedUpdate();

  if ( buttonFlag ) {
    Serial.println(F("button wake up!"));
    digitalWrite(LED, HIGH);
    readButtons();
    uint16_t bat = readBattery();
    uint8_t batH = bat >> 8;
    uint8_t batL = bat;
    uint8_t btn = readButtons();
    addToCue(batH, batL, btn);
    printCue();    
    buttonFlag = false;
    delay(100);

    if (!sending && cueCounter==0){
      activateSleepMode(100);      
    }else{
       activateSleepMode(CUE_TRANSMIT_INTERVAL);      
    }
  }

  if ( wakeUpFlag && !buttonFlag ) {
    Serial.println(F("timer wake up!"));
    if (cueCounter > 0){
      processCue(); 
    }else{
      uint16_t bat = readBattery();
      uint8_t batH = bat >> 8;
      uint8_t batL = bat;
      uint8_t btn = readButtons();
  
      mydata[0] = batH;
      mydata[1] = batL;
      mydata[2] = 0;
      
      do_send(&sendjob);
      sendFlash();
    }
    wakeUpFlag = false;
  }
}

void wakeUpTimeOut() {
  if ( !buttonFlag  ) {
    wakeUpFlag =  true;
  }
}

void wakeUpButton() {
  buttonFlag = true;
}
