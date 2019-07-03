import processing.serial.*;
Serial port;

void setup(){
  port=new Serial(this,"COM3",9600);
  size(600,200);
}


void draw(){
  fill(255,0,0);
  ellipse(300,100,60,60);
}


void mouseClicked(){
  if((mouseX>=270)&(mouseX<=330)&(mouseY>=70)&(mouseY<=130))
  {
  println("red");
  port.write("a");
  }
}
