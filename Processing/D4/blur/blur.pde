PImage img;
float blurScale=1;

void setup() {
  size(600, 600);
  background(0);
  img = loadImage("TIGER 8.12.png");
}


void draw() {
  //scale(0,5);
  //translate(width/2,height/2);
  for (int i=0; i<50; i++) {
    int xx= (int)random(width);
    int yy= (int)random(height);
    color fc=img.get(xx, yy);
    fill(fc);
    noStroke();
    //rotate(random(TWO_PI));
    rect(xx, yy, 50, 50);
    //image(img,0,0);
    //filter(BLUR,blurScale);
  }
}

  void keyPressed() {
    if (key=='a') {
      blurScale++;
    }
    if (key=='z') {
      blurScale--;
    }
  }
