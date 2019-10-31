long lastFlashUpdateTime = 0;
boolean ledDebugStatus = 0;
int debugLedFleshInterval = 200;
boolean debugLedflashing = false;

void debugLedUpdate() {
  if (debugLedflashing) {
    if (millis() - lastFlashUpdateTime > debugLedFleshInterval) {
      ledDebugStatus = !ledDebugStatus;
      lastFlashUpdateTime = millis();
      digitalWrite(LED, ledDebugStatus);
    }
  }
}

void connectFlash() {
  debugLedFleshInterval = 1000;
  debugLedflashing = true;
}

void sendFlash() {
  debugLedFleshInterval = 100;
  debugLedflashing = true;
}

void stopFlashing() {
  debugLedflashing = false;
}
