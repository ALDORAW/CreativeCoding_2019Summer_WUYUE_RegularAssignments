void setup() {                
  for(int i=8; i<=13; i++)
  {pinMode(i, OUTPUT);   
  }  
}
 
void loop() {
  for(int x=8; x<=13; x++)
  {
  digitalWrite(x, HIGH);
  }
  for(int x=8; x<=13; x++)
  {
    digitalWrite(x, LOW);
    delay(500);
  }
  for (int x=8; x<=13; x++) 
  {
    digitalWrite(x,HIGH);
    delay(500);
  }
  for (int x=8; x<=13; x++) 
  {
    digitalWrite(x,LOW);
   } 
}
