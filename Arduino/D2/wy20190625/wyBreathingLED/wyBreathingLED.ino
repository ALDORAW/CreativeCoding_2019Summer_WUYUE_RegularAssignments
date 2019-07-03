void setup() {
  pinMode(10,OUTPUT);
}

void loop() {
  for(int a=0;a<=255;a++){
    analogWrite(10,a);
    delay(8);
  }
  for(int a=255;a>=0;a--){
    analogWrite(10,a);
    delay(8);
  }
  delay(800);
}
