int index=0;

void setup(){
  size(600, 600);
  background(0);
}

void draw(){
  float d= random(20, 50);
  float n= random(-0.1,0.1);
  float m= random(-0.1,0.1);
  float x= random(width);
  noStroke();
  fill(random(0,255), random(0,255), random(0,255));
  ellipse(random(width), random(height), d, d);
  rect(random(width), random(height), d, d);
  triangle(x, n*x+1.732*m*x, x-m*x, n*x, x+m*x, n*x);
}

void keyPressed(){
  if(key=='s'){
    saveFrame("page"+index+".png");
    index +=1; //++; //=index +1;
  }
}
