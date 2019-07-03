int n=0;
void setup() {
  pinMode(4,INPUT);
  pinMode(6,OUTPUT);
  pinMode(10,INPUT);
  

}

void loop() {
  int up= digitalRead(4);
  int down =digitalRead(10);
  if(up==HIGH){
    n=n+5;
      if(n>=255){
        n=255;
      }
    analogWrite(6,n);
    delay(300);
  }
  if(down==HIGH){
    n=n-5;
      if(n<=0){
        n=0;
      }
    analogWrite(6,n);
    delay(300);
  }

}
