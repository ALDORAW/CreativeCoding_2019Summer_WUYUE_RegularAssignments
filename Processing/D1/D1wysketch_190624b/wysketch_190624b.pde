//mouseX, mouseY, pmouseX, pmouseY,


void setup(){
  size(600,600);
  background(0);
}

void draw(){
  float r=random(0,255);
  float g=random(0,255);
  float b=random(0,255);
  float d=dist(pmouseX, pmouseY, mouseX, mouseY);
  stroke(r,g,b);
  if (d>=0){
    strokeWeight(d/10);
  }
    else {
    strokeWeight(-d/10);
    }
  line(pmouseX, pmouseY, mouseX, mouseY);
}
