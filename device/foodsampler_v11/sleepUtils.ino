void activateSleepMode(){
        digitalWrite(LED, LOW);

       if (cueCounter ==  0) {
        Serial.print("Entering sleep mode for: ");
        Serial.println(HEARTBEAT_INTERVAL);
        LowPower.deepSleep(HEARTBEAT_INTERVAL);
      }
      else {
        Serial.print("Entering sleep mode for: ");
        Serial.println(CUE_TRANSMIT_INTERVAL);
        LowPower.deepSleep(CUE_TRANSMIT_INTERVAL);
      }
}
