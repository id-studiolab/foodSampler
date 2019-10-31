void printSessionInfo() {
  u4_t netid = 0;
  devaddr_t devaddr = 0;
  u1_t nwkKey[16];
  u1_t artKey[16];
  LMIC_getSessionKeys(&netid, &devaddr, nwkKey, artKey);
  Serial.print("netid: ");
  Serial.println(netid, DEC);
  Serial.print("devaddr: ");
  Serial.println(devaddr, HEX);
  Serial.print("artKey: ");
  for (int i = 0; i < sizeof(artKey); ++i) {
    Serial.print(artKey[i], HEX);
  }
  Serial.println("");
  Serial.print("nwkKey: ");
  for (int i = 0; i < sizeof(nwkKey); ++i) {
    Serial.print(nwkKey[i], HEX);
  }
  Serial.println("");
}

void initLmic(){
  // LMIC init
  os_init();

  // Let LMIC compensate for +/- 1% clock error
  LMIC_setClockError(MAX_CLOCK_ERROR * 1 / 100);

  // Reset the MAC state. Session and pending data transfers will be discarded.
  LMIC_reset();

  // Start job (sending automatically starts OTAA too)
  do_send(&sendjob);
}
