#define CUELENGTH 60
uint8_t sendCue[CUELENGTH];
uint8_t cueCounter = 0;


void addToCue (uint8_t buttonData, uint8_t batHighByte, uint8_t batLowByte ){
  sendCue[cueCounter] = buttonData;
  sendCue[cueCounter+1] = batHighByte;
  sendCue[cueCounter+2] = batLowByte;
  

//  Serial.println(sendCue[cueCounter]);
//  Serial.println(sendCue[cueCounter+1]);
//  Serial.println(sendCue[cueCounter+2]);
    
  cueCounter = cueCounter+3;
  
}

void shiftCue(){
  for (int i=0;i<CUELENGTH-3;i++){
    sendCue[i]=sendCue[i+3];
  }
  //printCue();
}

void printCue(){
    for (int i=0;i<CUELENGTH;i+=3){
      Serial.print (sendCue[i]);
      Serial.print (sendCue[i+1]);
      Serial.println (sendCue[i+2]);
      
    }
    Serial.println();
}




void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  while(!Serial){    
  }
  addToCue(23, 24, 25);
  addToCue(3, 2, 1);
  addToCue(500, 255, 100);

  printCue();
  shiftCue();
  printCue();
}

void loop() {
  // put your main code here, to run repeatedly:

}
