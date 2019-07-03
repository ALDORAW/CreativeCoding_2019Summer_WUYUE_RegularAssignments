void setup(){
  for(int i=2;i<=6;i++)
  {
  pinMode(i,OUTPUT);
  }
}

void loop(){
for(int x=2;x<=6;x++)
  {
   digitalWrite(x,HIGH);
 
  }
delay(1000);

for(int x=2;x<=6;x++)
  {
   digitalWrite(x,LOW);
   delay(500);

}
delay(1000);
for(int x=2;x<=6;x++)
  {
   digitalWrite(x,HIGH);
   delay(500);
 
  }
 delay(1000);
 for(int x=2;x<=6;x++)
  {
   digitalWrite(x,LOW);
  }
 delay(1000);
   



  
}
