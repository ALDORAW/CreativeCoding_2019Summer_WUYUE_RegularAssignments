void setup() {
  pinMode(13,OUTPUT);
  for(int n=2; n<=9; n++)
  {
    pinMode(n,OUTPUT);
  }
  

}

void loop() {
  digitalWrite(13,1);
  
  int n0[8]={0,0,0,0,0,0,1,0};
  int z=0;
  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n0[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n1[8]={1,0,0,1,1,1,1,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n1[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n2[8]={0,0,1,0,0,1,0,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n2[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n3[8]={0,0,0,0,1,1,0,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n3[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n4[8]={1,0,0,1,1,0,0,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n4[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n5[8]={0,1,0,0,1,0,0,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n5[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n6[8]={0,1,0,0,0,0,0,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n6[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n7[8]={0,0,0,1,1,1,1,1};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n7[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n8[8]={0,0,0,0,0,0,0,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n8[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

  int n9[8]={0,0,0,0,1,0,0,0};

  for(int x=2; x<=9; x++)
  {
    digitalWrite(x,n9[z]);
    z++;
    if(z>9)
    z=0;
  }
  delay(1000);

}
