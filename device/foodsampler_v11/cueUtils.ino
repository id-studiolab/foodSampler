


void addToCue (uint8_t buttonData, uint8_t batHighByte, uint8_t batLowByte ){
  
  if(cueCounter < CUELENGTH ){
    sendCue[cueCounter] = batHighByte;
    sendCue[cueCounter+1] = batLowByte;
    sendCue[cueCounter+2] = buttonData;
    cueCounter = cueCounter+3;
  }
  else{
    Serial.println("ERROR: send cue full");
  }   
}

void shiftCue(){
  for (int i=0;i<CUELENGTH-3;i++){
    sendCue[i]=sendCue[i+3];
  }
    cueCounter -= 3;
  //printCue();
}

void processCue() {
  if ( cueCounter > 0 ) {
    mydata[0] = sendCue[0];
    mydata[1] = sendCue[1];
    mydata[2] = sendCue[2];
    do_send(&sendjob);
    sendFlash();
    shiftCue();
  }
}

void printCue(){
    for (int i=0;i<CUELENGTH;i+=3){
      Serial.print (sendCue[i]);
      Serial.print (sendCue[i+1]);
      Serial.println (sendCue[i+2]);
      
    }
    Serial.println();
}
