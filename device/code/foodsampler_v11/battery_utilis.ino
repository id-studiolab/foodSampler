uint16_t readBattery() {
  float measuredvbat = analogRead(BATPIN);
  measuredvbat *= 2;      // we divided by 2, so multiply back
  measuredvbat *= 3.3;    // Multiply by 3.3V, our reference voltage
  measuredvbat /= 1024;   // convert to voltage
  uint16_t batVoltage = measuredvbat *= 1000;
  return ( batVoltage );
}

void printBatteryStatus(){
  Serial.print("Battery: "); 
  Serial.print(readBattery()); 
  Serial.println(" mV");  
 }
