void setup(){
  size(600, 600);
  background(0);
}

void draw(){
  float d= random(20, 50);
  noStroke();
  fill(random(0,255), random(0,255), random(0,255));
  ellipse(random(width), random(height), d, d);
}

void keyPressed(){
  if(key=='s'){
    saveFrame("page.png");
  }
}
