void initRTC() {
  rtc.begin();
  rtc.setDate( DAY, MONTH, YEAR );
  rtc.setTime( HOUR, MIN, SEC );
}

void printTimeDate() {
  Serial.print(rtc.getYear() + 1984); Serial.print("/"); Serial.print(rtc.getMonth()); Serial.print("/"); Serial.print(rtc.getDay()); Serial.print(" ");
  Serial.print(rtc.getHours()); Serial.print(":"); Serial.print(rtc.getMinutes()); Serial.print(":"); Serial.println(rtc.getSeconds());
}
