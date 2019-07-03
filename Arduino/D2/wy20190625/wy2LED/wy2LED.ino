void setup() {
  pinMode(4,INPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
}

void loop() {
  int n=digitalRead(4);
  if(n==HIGH) {
    digitalWrite(13,HIGH);
    digitalWrite(12,LOW);
  }
  else
  {
    digitalWrite(12,HIGH);
    digitalWrite(13,LOW);
  }
}
