

#include <lmic.h>
#include <hal/hal.h>
#include <SPI.h>
#include "ArduinoLowPower.h"
#include "auth.h"


#define FOODSAMPLER_ID 2
#define HEARTBEAT_INTERVAL 60000  //in milliseconds (10 min)
#define DEBUG 0

//#define CUELENGTH 100

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

#define CUE_SIZE 50

bool buttonFlag = false;
bool wakeUpFlag = false;

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

static uint8_t mydata[CUE_SIZE];
uint8_t dataCounter = 0;
static osjob_t sendjob;

long lastFlashUpdateTime = 0;
boolean ledDebugStatus = 0;
int debugLedFleshInterval = 200;
boolean debugLedflashing = false;

void debugLedUpdate() {
  if (debugLedflashing) {
    if (millis() - lastFlashUpdateTime > debugLedFleshInterval) {
      ledDebugStatus = !ledDebugStatus;
      lastFlashUpdateTime = millis();
      digitalWrite(LED, ledDebugStatus);
    }
  }
}

void connectFlash( void ) {
  debugLedFleshInterval = 1000;
  debugLedflashing = true;
}

void sendFlash( void ) {
  debugLedFleshInterval = 100;
  debugLedflashing = true;
}

void stopFlashing() {
  debugLedflashing = false;
}


// Pin mapping for Adafruit Feather M0 LoRa
const lmic_pinmap lmic_pins = {
  .nss = 8,
  .rxtx = LMIC_UNUSED_PIN,
  .rst = 4,
  .dio = {3, 6, LMIC_UNUSED_PIN},
  .rxtx_rx_active = 0,
  .rssi_cal = 8,                 // LBT cal for the Adafruit Feather M0 LoRa, in dB
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
      {
        u4_t netid = 0;
        devaddr_t devaddr = 0;
        u1_t nwkKey[16];
        u1_t artKey[16];
        LMIC_getSessionKeys(&netid, &devaddr, nwkKey, artKey);
        Serial.print("netid: ");
        Serial.println(netid, DEC);
        Serial.print("devaddr: ");
        Serial.println(devaddr, HEX);
        Serial.print("artKey: ");
        for (int i = 0; i < sizeof(artKey); ++i) {
          Serial.print(artKey[i], HEX);
        }
        Serial.println("");
        Serial.print("nwkKey: ");
        for (int i = 0; i < sizeof(nwkKey); ++i) {
          Serial.print(nwkKey[i], HEX);
        }
        Serial.println("");
      }
      // Disable link check validation (automatically enabled
      // during join, but because slow data rates change max TX
      // size, we don't use it in this example.
      LMIC_setLinkCheckMode(0);
      stopFlashing();


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
      break;
    case EV_REJOIN_FAILED:
      Serial.println(F("EV_REJOIN_FAILED"));
      break;
    case EV_TXCOMPLETE:
      Serial.println(F("EV_TXCOMPLETE (includes waiting for RX windows)"));
      stopFlashing();
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

      for(int i  =  0; i<100; i++){
        mydata[i]  =  0;
      }
      
      if (!DEBUG) {
        Serial.println("sleepy time");
        //USBDevice.detach();
        digitalWrite(LED, LOW);
       
        LowPower.deepSleep(HEARTBEAT_INTERVAL);
       
     //   wakeUpTimeOut();
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

void saveBattery(){
  uint16_t bat = readBattery();
    mydata[0] = bat >> 8;
    mydata[1] = bat;
}

void do_send(osjob_t* j) {
  // Check if there is not a current TX/RX job running
  if (LMIC.opmode & OP_TXRXPEND) {
    Serial.println(F("OP_TXRXPEND, not sending"));
  } else {
    // Prepare upstream data transmission at the next possible time.
    LMIC_setTxData2(1, mydata, sizeof(mydata), 0);
    Serial.println(F("Packet queued"));
  }
  // Next TX is scheduled after TX_COMPLETE event.
}


void addToCue(uint8_t hour, uint8_t min, uint8_t button){
  mydata[dataCounter+2] = hour;
  mydata[dataCounter+3] = min;
  mydata[dataCounter+3] = button;
  dataCounter += 3;
  printCue();
}

void printCue(){
  for(int i = 0; i < CUE_SIZE; i++){
    Serial.println(mydata[i]);
  }
}

void setup() {

  if (DEBUG) {
    while (!Serial);
  }

  while (!Serial);
  
  Serial.begin(9600);
  Serial.println(F("Starting"));

  pinMode(BUT1, INPUT_PULLUP);
  pinMode(BUT2, INPUT_PULLUP);
  pinMode(BUT3, INPUT_PULLUP);
  pinMode(BUT4, INPUT_PULLUP);
  pinMode(BUT5, INPUT_PULLUP);
  pinMode(BUT6, INPUT_PULLUP);
  pinMode(BUT7, INPUT_PULLUP);
  pinMode(LED, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);

  //    digitalWrite(LED1, HIGH);
  //    digitalWrite(LED2, HIGH);
  //    digitalWrite(LED3, HIGH);
  //    digitalWrite(LED4, HIGH);
  //    digitalWrite(LED5, HIGH);
  //    digitalWrite(LED6, HIGH);
  //    digitalWrite(LED7, HIGH);

  pinMode(BATPIN, INPUT);

  LowPower.attachInterruptWakeup(BUT1, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT2, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT3, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT4, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT5, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT6, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT7, wakeUpButton, FALLING);

  Serial.print("Battery: "); Serial.print(readBattery()); Serial.println(" mV");

  
  rtc.begin();
  if ( SETCLOCK ) {
    rtc.setDate( DAY, MONTH, YEAR );
    rtc.setTime( HOUR, MIN, SEC );
  }



  // LMIC init
  os_init();
  // Let LMIC compensate for +/- 1% clock error
  LMIC_setClockError(MAX_CLOCK_ERROR * 1 / 100);

  // Reset the MAC state. Session and pending data transfers will be discarded.
  LMIC_reset();

  // Start job (sending automatically starts OTAA too)
  do_send(&sendjob);
  //sendFlash();
}

volatile int buttons = 0;

void loop() {
  os_runloop_once();
  debugLedUpdate();
  
  if ( buttonFlag ) {
    //noInterrupts();
    digitalWrite(LED, HIGH);
    buttonFlag = false;

    //delay(20); //just to do some debouncing
    buttons = 0x00;
    buttons |= (!digitalRead(BUT1));
    buttons |= (!digitalRead(BUT2)) << 1;
    buttons |= (!digitalRead(BUT3)) << 2;
    buttons |= (!digitalRead(BUT4)) << 3;
    buttons |= (!digitalRead(BUT5)) << 4;
    buttons |= (!digitalRead(BUT6)) << 5;
    buttons |= (!digitalRead(BUT7)) << 6;
    delay(50);
    //interrupts();
    //Serial.println(buttons);
    //
    Serial.print(rtc.getYear() + 1984); Serial.print("/"); Serial.print(rtc.getMonth()); Serial.print("/"); Serial.print(rtc.getDay()); Serial.print(" ");
    Serial.print(rtc.getHours()); Serial.print(":"); Serial.print(rtc.getMinutes()); Serial.print(":"); Serial.println(rtc.getSeconds());
    
    //addToCue(rtc.getHours(), rtc.getMinutes(), buttons);

    //do_send(&sendjob);

    //sendFlash();
    delay(50);
    digitalWrite(LED, LOW);
    
  }

  if ( wakeUpFlag && !buttonFlag ) {
    
    saveBattery();
    dataCounter =  0;
    
    wakeUpFlag = false;
    do_send(&sendjob);
    //addToCue(mydata[0], mydata[1], mydata[2]);
    //sendFlash();

    //processCue();

  }
}

void wakeUpTimeOut() {
  if ( !buttonFlag  ) {
    wakeUpFlag =  true;
  }
}

void wakeUpButton() {
  //digitalWrite(LED, HIGH);
  buttonFlag = true;
}



uint16_t readBattery() {

  float measuredvbat = analogRead(BATPIN);

  measuredvbat *= 2;     // we divided by 2, so multiply back
  measuredvbat *= 3.3;   // Multiply by 3.3V, our reference voltage
  measuredvbat /= 1024;  // convert to voltage
  uint16_t batVoltage = measuredvbat *= 1000;
  //Serial.print("VBat: " ); Serial.println(batVoltage);

  return ( batVoltage );
}
