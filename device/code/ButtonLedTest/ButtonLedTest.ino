static int button[7] = {39, 34, 35, 32, 33, 25, 26};
//static int led[7] = {13, 9, 10, 11, 6, 7, 8};

static int button5 = 25;
//static int button1 = 33;

int led = 13;

void setup() {

  pinMode( button5, INPUT_PULLUP );
 // pinMode( button1, INPUT_PULLUP );
//  for (int i = 0; i<7; i++) {
//    pinMode(button[i], INPUT_PULLUP);
//   
//  }
  pinMode( led, OUTPUT );
  
  Serial.begin(115200);
}

void loop() {

  if( digitalRead( button5) ==LOW ){
    Serial.println("buttonn5 pressed");
  }
  digitalWrite(led, HIGH);
  delay(1000);
  digitalWrite(led, LOW);
  delay(1000);
//  if( digitalRead( button1 == LOW )){
//    Serial.println("buttonn1 pressed");
//  }

    
//  for (int i = 0; i<7; i++){
//    if (digitalRead(button[i]) == LOW) {
//      Serial.println("button pressed");
//    }
    
   // digitalWrite(13, HIGH);
    //else digitalWrite(13, LOW);              
  
}
