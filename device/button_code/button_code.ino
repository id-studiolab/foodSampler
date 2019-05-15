
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

bool intFlag = false;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  while( !Serial );
  
  Serial.println("FoodSampler, ready to sample some food");
  
  pinMode(BUT0, INPUT);
  pinMode(BUT1, INPUT);
  pinMode(BUT2, INPUT);
  pinMode(BUT3, INPUT);
  pinMode(BUT4, INPUT);
  pinMode(BUT5, INPUT);
  pinMode(BUT6, INPUT);
  pinMode(LED, OUTPUT);
  pinMode(BATPIN, INPUT);
  

  digitalWrite(LED, LOW);

//  attachInterrupt(digitalPinToInterrupt(BUT0), readButtons, RISING);
//  attachInterrupt(digitalPinToInterrupt(BUT1), readButtons, RISING);
//  attachInterrupt(digitalPinToInterrupt(BUT2), readButtons, RISING);
//  attachInterrupt(digitalPinToInterrupt(BUT3), readButtons, RISING);
//  attachInterrupt(digitalPinToInterrupt(BUT4), readButtons, RISING);
//  attachInterrupt(digitalPinToInterrupt(BUT5), readButtons, RISING);
//  attachInterrupt(digitalPinToInterrupt(BUT6), readButtons, RISING);

  LowPower.attachInterruptWakeup(BUT0, wakeyWakey, RISING); 
  LowPower.attachInterruptWakeup(BUT1, wakeyWakey, RISING);
  LowPower.attachInterruptWakeup(BUT2, wakeyWakey, RISING); 
  LowPower.attachInterruptWakeup(BUT3, wakeyWakey, RISING);
  LowPower.attachInterruptWakeup(BUT4, wakeyWakey, RISING); 
  LowPower.attachInterruptWakeup(BUT5, wakeyWakey, RISING);
  LowPower.attachInterruptWakeup(BUT6, wakeyWakey, RISING);

  LowPower.deepSleep();
}

volatile int buttons = 0;
 
void loop() {
  // put your main code here, to run repeatedly:
 
  
  
 

  //Serial.println(buttons);
  //Serial.println(digitalRead(BUT0));
  //delay(100);
  //buttons = 0x00;

  if( intFlag ){
    
    //noInterrupts();
    intFlag = false;
    delay(5000);

    readBattery();
    
    buttons |= (digitalRead(BUT0));
    buttons |= (digitalRead(BUT1)) << 1;
    buttons |= (digitalRead(BUT2)) << 2;
    buttons |= (digitalRead(BUT3)) << 3;
    buttons |= (digitalRead(BUT4)) << 4;
    buttons |= (digitalRead(BUT5)) << 5;
    buttons |= (digitalRead(BUT6)) << 6;
    delay(50);
    //interrupts();
    Serial.println(buttons);
    buttons = 0x00;

    delay(2000);
    digitalWrite(LED, LOW);
    LowPower.deepSleep(); 
  }
}

uint16_t readBattery(){
  
  float measuredvbat = analogRead(BATPIN);
  
  measuredvbat *= 2;    // we divided by 2, so multiply back
  measuredvbat *= 3.3;  // Multiply by 3.3V, our reference voltage
  measuredvbat /= 1024; // convert to voltage
  uint16_t batVoltage = measuredvbat *= 1000;
  Serial.print("VBat: " ); Serial.println(batVoltage);
  return( batVoltage );
  
  
}

//void readButtons(){
//  intFlag = true;
//}

void wakeyWakey(){
  digitalWrite(LED, HIGH);
  intFlag = true;
}
