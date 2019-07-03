int redPin = 3;
int yellowPin = 4;
int greenPin = 5;

int c = 0;

void setup()
{
  Serial.begin(9600);  //比特率设置为一致方可通信
  pinMode(redPin,OUTPUT);
  pinMode(yellowPin,OUTPUT);
  pinMode(greenPin,OUTPUT);
}

void loop()
{
  if(Serial.available());
  c = Serial.read();
  if (c == 97)  //a的ASCII码值为97
  {
    digitalWrite(redPin,HIGH);   
    delay(500);
    digitalWrite(redPin,LOW); 
  }
  if (c == 98)  //b的ASCII码值为98
  {
    digitalWrite(yellowPin,HIGH);   
    delay(500);
    digitalWrite(yellowPin,LOW);    
  }
  if (c == 99)  
  {
    digitalWrite(greenPin,HIGH);   
    delay(500);
    digitalWrite(greenPin,LOW);
  }
}
