#define BUT0   9
#define BUT1   11
#define BUT2   0
#define BUT3   1
#define BUT4   A5
#define BUT5   A3
#define BUT6   A1
#define BATPIN A7
#define LED    13

#define LED0   10
#define LED1   12
#define LED2   22
#define LED3   24
#define LED4   A4
#define LED5   A2
#define LED6   A0

int buttons[] = {BUT0, BUT1, BUT2, BUT3, BUT4, BUT5, BUT6, BUT6};
int leds[] = {LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED6};

void setup() {

  for (int i = 0; i < 7; i++) {
    pinMode(buttons[i], INPUT_PULLUP);
    pinMode(leds[i], OUTPUT);
  }
  Serial.begin(9600);
}

void loop() {
  for (int i = 0; i < 7; i++) {
    if (digitalRead(buttons[i])==LOW){
      digitalWrite(leds[i],HIGH);
      Serial.print("button "); 
      Serial.print(i);
      Serial.println(" was pressed");
    }else{
      digitalWrite(leds[i],LOW);
    }
  }
}
