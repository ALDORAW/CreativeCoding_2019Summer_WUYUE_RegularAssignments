int totalNum = 10;
Ball[] theBall;

void setup() {
  size(600, 600);
  theBall= new Ball[totalNum];
  //PVector theBallLoc = new PVector(width/2, height/2);
  //float theBallDia = 50;
  //theBall=new Ball(theBallLoc, theBallDia);
  for(int i=0; i<theBall.length; i++){
    PVector loc = new PVector(random(width),random(height));
    PVector sp = new PVector(random(1, 5), random(1, 5));
    PVector ac = new PVector(0,0);
    float d=random(20,50);
    theBall[i]=new Ball(loc,sp,ac, d,i);
  }
}


void draw() {
  background(0);
  //fill(#D67D7D);
  for(int i=0; i< theBall.length; i++){
    theBall[i].show();
    theBall[i].collision();
    theBall[i].edge();
    println(theBall[2].location.x);
  
  }
}
