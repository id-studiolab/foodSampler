


void addToCue (uint8_t batHighByte, uint8_t batLowByte, uint8_t buttonData ) {
  if (cueCounter < CUELENGTH ) {
    sendCue[cueCounter] = batHighByte;
    sendCue[cueCounter + 1] = batLowByte;
    sendCue[cueCounter + 2] = buttonData;
    cueCounter += 3;
  }else {
    Serial.println("ERROR: send cue full");
  }
}

void shiftCue() {
  for (int i = 0; i < CUELENGTH - 3; i++) {
    sendCue[i] = sendCue[i + 3];
  }
  cueCounter -= 3;
  //printCue();
}

void processCue() {
  Serial.println("processing cue...");
    mydata[0] = sendCue[0];
    mydata[1] = sendCue[1];
    mydata[2] = sendCue[2];
    packedQueued=true;
    do_send(&sendjob);
    sendFlash();
}

void printCue() {
  for (int i = 0; i < CUELENGTH; i += 3) {
    Serial.print (sendCue[i],HEX);
    Serial.print (sendCue[i + 1],HEX);
    Serial.print (sendCue[i + 2],HEX);
    Serial.print('\t');
  }
  Serial.println();
}

void printPacketData(uint8_t bat1, uint8_t bat2, uint8_t btn){
    Serial.print(F("Battery voltage is: " ));
    Serial.println(bat1 * 256 + bat2);
    Serial.print(F("Button pressed: " ));
    Serial.println(btn);
}
