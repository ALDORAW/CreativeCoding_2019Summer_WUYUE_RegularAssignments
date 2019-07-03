int M=5;  //number of balls
float S=10;  //speed
int R=20;
int sizeX=800;
int sizeY=600;
Ball [] theBall=new Ball[M+1];
Ball whiteBall;

void setup()
{
  size(1000, 800);
  smooth();
  whiteBall =new Ball(100, 300, 1);
  theBall[0] =new Ball(600, 300, 0);
  for (int i=1; i<=2; i++)
  {
    theBall[i] =new Ball(640, 240+i*40, 0);
  }
  for (int i=3; i<=M; i++)
  {
    theBall[i] =new Ball(680, 220+(i-2)*40, 0);
  }
}

void draw()
{
  background(0);
  whiteBall.roll();
  whiteBall.collision();
  whiteBall.displayOnScreen();  
  for (int i=0; i<=M; i++)
  {
    theBall[i].roll();
    theBall[i].collision();
    theBall[i].displayOnScreen();
  if (mousePressed)
  {
    if (whiteBall.speed<=0)
    {
      whiteBall.speed=S; 
      float an;
      an=acos((mouseX-whiteBall.x)/dist(mouseX, mouseY, whiteBall.x, whiteBall.y));  
      if (mouseX>whiteBall.x) 
        whiteBall.angle=an;
      else
        whiteBall.angle=PI-an;
    }
  }
} 
}
