void setup() {
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);

}

void loop() {
  int vol = analogRead(A0) * (5.0 / 1023.0 * 100);

  if (vol <= 31)
  {
    digitalWrite(13, HIGH);
    digitalWrite(12, LOW);
    digitalWrite(11, LOW);
  }

  else if (vol >= 32 && vol <= 40)
  {
    digitalWrite(13, LOW);
    digitalWrite(12, HIGH);
    digitalWrite(11, HIGH);
  }

  else if (vol >= 41)
  {
    digitalWrite(13, LOW);
    digitalWrite(12, LOW);
    digitalWrite(11, HIGH);
  }

}
