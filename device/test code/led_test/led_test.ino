
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

void setup() {
  // put your setup code here, to run once:
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

}

void loop() {
  // put your main code here, to run repeatedly:

}
