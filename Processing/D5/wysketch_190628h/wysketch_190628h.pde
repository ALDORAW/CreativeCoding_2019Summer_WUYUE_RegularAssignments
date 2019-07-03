import processing.serial.*;
Serial port;

void setup(){
  port=new Serial(this,"COM3",9600); //Arduino板的端口号



  size(600,200);
}

void draw(){
  fill(255,0,0);
  rect(50,50,100,100);
  
  fill(236,240,65);
  rect(250,50,100,100);
  
  fill(40,191,50);
  rect(450,50,100,100);  
}

void mouseClicked(){
  if((mouseX>=50)&(mouseX<=150)&(mouseY>=50)&(mouseY<=150))
  {
    println("red");
    port.write("a");
  }
  else if((mouseX>=250)&(mouseX<=350)&(mouseY>=50)&(mouseY<=150))
  {
    println("yellow");
    port.write("b");
  }
  else if((mouseX>=450)&(mouseX<=550)&(mouseY>=50)&(mouseY<=150))
  {
    println("green");
    port.write("c");
  }
}
