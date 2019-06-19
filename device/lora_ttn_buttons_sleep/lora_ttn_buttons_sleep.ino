/*******************************************************************************
 * Copyright (c) 2015 Thomas Telkamp and Matthijs Kooijman
 * Copyright (c) 2018 Terry Moore, MCCI
 *
 * Permission is hereby granted, free of charge, to anyone
 * obtaining a copy of this document and accompanying files,
 * to do whatever they want with them without any restriction,
 * including, but not limited to, copying, modification and redistribution.
 * NO WARRANTY OF ANY KIND IS PROVIDED.
 *
 * This example sends a valid LoRaWAN packet with payload "Hello,
 * world!", using frequency and encryption settings matching those of
 * the The Things Network.
 *
 * This uses OTAA (Over-the-air activation), where where a DevEUI and
 * application key is configured, which are used in an over-the-air
 * activation procedure where a DevAddr and session keys are
 * assigned/generated for use with all further communication.
 *
 * Note: LoRaWAN per sub-band duty-cycle limitation is enforced (1% in
 * g1, 0.1% in g2), but not the TTN fair usage policy (which is probably
 * violated by this sketch when left running for longer)!

 * To use this sketch, first register your application and device with
 * the things network, to set or generate an AppEUI, DevEUI and AppKey.
 * Multiple devices can use the same AppEUI, but each device has its own
 * DevEUI and AppKey.
 *
 * Do not forget to define the radio type correctly in config.h.
 *
 *******************************************************************************/

#include <lmic.h>
#include <hal/hal.h>
#include <SPI.h>
#include "ArduinoLowPower.h"

#define BUT0   A0
#define BUT1   A1
#define BUT2   A2
#define BUT3   A3
#define BUT4   A4
#define BUT5   A5
#define BUT6    5
#define BATPIN A7   
#define LED    13

bool buttonFlag = false;
bool wakeUpFlag = false;

// Schedule TX every this many seconds (might become longer due to duty
// cycle limitations).
const unsigned TX_INTERVAL = 180;

const int HEARTBEAT_INTERVAL = 600000;  //in milliseconds



// This EUI must be in little-endian format, so least-significant-byte
// first. When copying an EUI from ttnctl output, this means to reverse
// the bytes. For TTN issued EUIs the last bytes should be 0xD5, 0xB3,
// 0x70.
static const u1_t PROGMEM APPEUI[8]={ 0xB9, 0xAE, 0x01, 0xD0, 0x7E, 0xD5, 0xB3, 0x70 };
void os_getArtEui (u1_t* buf) { memcpy_P(buf, APPEUI, 8);}

// This should also be in little endian format, see above.
static const u1_t PROGMEM DEVEUI[8]={ 0xD4, 0x07, 0x71, 0x51, 0x18, 0x37, 0x60, 0x00 };
void os_getDevEui (u1_t* buf) { memcpy_P(buf, DEVEUI, 8);}

// This key should be in big endian format (or, since it is not really a
// number but a block of memory, endianness does not really apply). In
// practice, a key taken from ttnctl can be copied as-is.
static const u1_t PROGMEM APPKEY[16] = { 0x6B, 0x15, 0x15, 0x95, 0xEE, 0xEE, 0xB3, 0xF5, 0xA3, 0x50, 0xD9, 0x12, 0xC3, 0x0E, 0x86, 0xAF };
void os_getDevKey (u1_t* buf) {  memcpy_P(buf, APPKEY, 16);}

static uint8_t mydata[3];
static osjob_t sendjob;




// Pin mapping for Adafruit Feather M0 LoRa
const lmic_pinmap lmic_pins = {
    .nss = 8,
    .rxtx = LMIC_UNUSED_PIN,
    .rst = 4,
    .dio = {3, 6, LMIC_UNUSED_PIN},
    .rxtx_rx_active = 0,
    .rssi_cal = 8,              // LBT cal for the Adafruit Feather M0 LoRa, in dB
    .spi_freq = 8000000,
};

void onEvent (ev_t ev) {
    Serial.print(os_getTime());
    Serial.print(": ");
    switch(ev) {
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
              for (int i=0; i<sizeof(artKey); ++i) {
                Serial.print(artKey[i], HEX);
              }
              Serial.println("");
              Serial.print("nwkKey: ");
              for (int i=0; i<sizeof(nwkKey); ++i) {
                Serial.print(nwkKey[i], HEX);
              }
              Serial.println("");
            }
            // Disable link check validation (automatically enabled
            // during join, but because slow data rates change max TX
	    // size, we don't use it in this example.
            LMIC_setLinkCheckMode(0);

            for(int i = 5; i > 0; i--){
              digitalWrite(LED,HIGH);
              delay(500);
              digitalWrite(LED,LOW);
              delay(500);
            }  
              
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
            if (LMIC.txrxFlags & TXRX_ACK)
              Serial.println(F("Received ack"));
            if (LMIC.dataLen) {
              Serial.print(F("Received "));
              Serial.print(LMIC.dataLen);
              Serial.println(F(" bytes of payload"));
            }
            // Schedule next transmission

            // go to sleep mode here.
            
            
            os_setTimedCallback(&sendjob, os_getTime()+sec2osticks(TX_INTERVAL), do_send);
            Serial.println("sleepy time");
            USBDevice.detach();
            digitalWrite(LED, LOW);
            LowPower.deepSleep(HEARTBEAT_INTERVAL);

            wakeUpTimeOut();
            
            //send out hearbeat
            //mydata[3] =  128;
            //do_send(&sendjob);
            
            //Serial.println("WAKE UP!!!!");
            
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

void do_send(osjob_t* j){
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

void setup() {

    //while (!Serial);
    
    Serial.begin(9600);
    Serial.println(F("Starting"));

    pinMode(BUT0, INPUT);
    pinMode(BUT1, INPUT);
    pinMode(BUT2, INPUT);
    pinMode(BUT3, INPUT);
    pinMode(BUT4, INPUT);
    pinMode(BUT5, INPUT);
    pinMode(BUT6, INPUT);
    pinMode(LED, OUTPUT);
    pinMode(BATPIN, INPUT);

    digitalWrite(LED, HIGH);

    //attachInterrupt(digitalPinToInterrupt(BUT0), readButtons, RISING);
    
    LowPower.attachInterruptWakeup(BUT0, wakeUpButton, RISING);
    LowPower.attachInterruptWakeup(BUT1, wakeUpButton, RISING); 
    LowPower.attachInterruptWakeup(BUT2, wakeUpButton, RISING); 
    LowPower.attachInterruptWakeup(BUT3, wakeUpButton, RISING); 
    LowPower.attachInterruptWakeup(BUT4, wakeUpButton, RISING); 
    LowPower.attachInterruptWakeup(BUT5, wakeUpButton, RISING); 
    LowPower.attachInterruptWakeup(BUT6, wakeUpButton, RISING);  
    

    Serial.print("Battery: "); Serial.print(readBattery()); Serial.println(" mV");
    
    // LMIC init
    os_init();
    // Reset the MAC state. Session and pending data transfers will be discarded.
    LMIC_reset();

    // Start job (sending automatically starts OTAA too)
    do_send(&sendjob);
}

volatile int buttons = 0;

void loop() {
    os_runloop_once();

    if( buttonFlag ){
      //noInterrupts();
      digitalWrite(LED, HIGH);
      buttonFlag = false;
      
      //delay(20); //just to do some debouncing
          
      buttons |= (digitalRead(BUT0));
      buttons |= (digitalRead(BUT1)) << 1;
      buttons |= (digitalRead(BUT2)) << 2;
      buttons |= (digitalRead(BUT3)) << 3;
      buttons |= (digitalRead(BUT4)) << 4;
      buttons |= (digitalRead(BUT5)) << 5;
      buttons |= (digitalRead(BUT6)) << 6;
      //delay(50);
      //interrupts();
      //Serial.println(buttons);
      
      uint16_t bat = readBattery();
      mydata[0] = bat >> 8;
      mydata[1] = bat;
      mydata[2] = buttons;
      buttons = 0x00;
      do_send(&sendjob);
    }
   
   if( wakeUpFlag && !buttonFlag ){
      wakeUpFlag = false;
      mydata[2] = 0;
      do_send(&sendjob);
        
      digitalWrite(LED,HIGH);
      delay(500);
      digitalWrite(LED,LOW);
      delay(500);
      digitalWrite(LED,HIGH);
      delay(500);
      digitalWrite(LED,LOW); 
   }
}

void wakeUpTimeOut(){
  if( !buttonFlag  ){
    wakeUpFlag =  true;
  }
  //USBDevice.attach();
  //Serial.println("Wake up done");
}

void wakeUpButton(){
  //digitalWrite(LED, HIGH);
  buttonFlag = true;
}


uint16_t readBattery(){
  float measuredvbat = analogRead(BATPIN);
  
  measuredvbat *= 2;    // we divided by 2, so multiply back
  measuredvbat *= 3.3;  // Multiply by 3.3V, our reference voltage
  measuredvbat /= 1024; // convert to voltage
  uint16_t batVoltage = measuredvbat *= 1000;
  //Serial.print("VBat: " ); Serial.println(batVoltage);
  return( batVoltage ); 
}
