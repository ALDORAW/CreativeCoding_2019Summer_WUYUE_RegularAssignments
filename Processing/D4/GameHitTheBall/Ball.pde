class Ball
{
  float x;
  float y;
  
  float speed;
  float angle;
  
  int r;
  int classify;
  //int flag;

  Ball(float xx, float yy, int c)
  {
    x=xx;
    y=yy;
    r=R;
    classify=c;
    speed=0;
    angle=0;
  }

  void roll()
  {
    if (speed>0)
    {
      x+=speed*cos(angle);
      y+=speed*sin(angle);
    }
    speed=speed-0.05;
  }

  void collision()
  {
    if (y+r>=sizeY||y-r<=0)
      angle=2*PI-angle;
    if (x+r>=sizeX||x-r<=0)
      angle=3*PI-angle;
    for (int i = 0; i<=M; i++)
    {
      for (int j = 0; j<=M; j++)
      {
        if (i!=j)
        {
          if (dist(theBall[i].x, theBall[i].y, theBall[j].x, theBall[j].y)<=theBall[i].r+theBall[j].r)
          {
            float m;
            m=atan((theBall[i].y-theBall[j].y)/(theBall[i].x-theBall[j].x));
            theBall[i].angle=PI-theBall[i].angle-2*m;
            theBall[j].angle=PI-theBall[j].angle-2*m;
            theBall[i].speed=((theBall[i].speed>theBall[j].speed)?theBall[i].speed:theBall[j].speed);
          }
        } 
      }
      if (dist(theBall[i].x, theBall[i].y, whiteBall.x, whiteBall.y)<=theBall[i].r+whiteBall.r)
      {  
        float m;
        m=atan((theBall[i].y-whiteBall.y)/(theBall[i].x-whiteBall.x));
        theBall[i].angle=PI-theBall[i].angle-2*m;
        whiteBall.angle=PI-whiteBall.angle-2*m;
        ;
        theBall[i].speed=whiteBall.speed;
      }
    }
  }

  void displayOnScreen()
  {
    if (classify==1)
      fill(255);
    else
      fill(#E05F6A);
    ellipse(x, y, 2*r, 2*r);
  }
}
