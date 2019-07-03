PFont myFont;

String[] str = loadStrings("NewsToday.txt");


void setup(){
  size(600, 600);
  myFont=createFont("Arial", 24);
}


void textProcess(){
  for(int i=1; i<str.length; i++){
    String p = str[i];
    text(p, 50, 50+30*i);
  }
}


void draw(){
  background(255);
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(myFont);
  textSize(60);
  text("这是一个。。。", width/2, 360);
  stroke(#CE6A6A);
  point(50, 300);
}
