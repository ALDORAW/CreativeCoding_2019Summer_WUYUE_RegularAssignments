int totalNum = 100;
Ball[] theBall;

void setup() {
  size(600, 600);
  theBall= new Ball[totalNum];
  //PVector theBallLoc = new PVector(width/2, height/2);
  //float theBallDia = 50;
  //theBall=new Ball(theBallLoc, theBallDia);
  for(int i=0; i<theBall.length; i++){
    PVector loc = new PVector(random(width),random(height));
    float d=random(30,60);
    theBall[i]=new Ball(loc,d,i);
  }
}
  

void draw() {
  background(0);
  //fill(#D67D7D);
  for(int i=0; i< theBall.length; i++){
    theBall[i].showing();
    theBall[i].collision();
    theBall[i].drawArrow();
    theBall[i].drawEllipse();
    theBall[i].connection();
    theBall[i].edge();
    
    println(theBall[2].location.x);
  
  }
}
