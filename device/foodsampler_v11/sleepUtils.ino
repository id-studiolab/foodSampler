void activateSleepMode(int time) {
  digitalWrite(LED, LOW);
  Serial.print("Entering sleep mode for: ");
  Serial.println(time);
  LowPower.deepSleep(time);
}
