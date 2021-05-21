void initIO() {
  pinMode(BUT1, INPUT_PULLUP);
  pinMode(BUT2, INPUT_PULLUP);
  pinMode(BUT3, INPUT_PULLUP);
  pinMode(BUT4, INPUT_PULLUP);
  pinMode(BUT5, INPUT_PULLUP);
  pinMode(BUT6, INPUT_PULLUP);
  pinMode(BUT7, INPUT_PULLUP);
  pinMode(LED, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);

  pinMode(BATPIN, INPUT);

  LowPower.attachInterruptWakeup(BUT1, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT2, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT3, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT4, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT5, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT6, wakeUpButton, FALLING);
  LowPower.attachInterruptWakeup(BUT7, wakeUpButton, FALLING);
}

int readButtons() {
  int buttons = 0;
  buttons |= (!digitalRead(BUT1));
  buttons |= (!digitalRead(BUT2)) << 1;
  buttons |= (!digitalRead(BUT3)) << 2;
  buttons |= (!digitalRead(BUT4)) << 3;
  buttons |= (!digitalRead(BUT5)) << 4;
  buttons |= (!digitalRead(BUT6)) << 5;
  buttons |= (!digitalRead(BUT7)) << 6;
  return (buttons);
}
