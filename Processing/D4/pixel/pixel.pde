PImage img;
PImage myImage;
int sectionNum = 9;
//float blurScale=1;

void setup() {
  size(1000,1000);
  //background(0);
  img = createImage(width, height, RGB);
  myImage = loadImage("IMG_20181004_172340.jpg");
  
   
  img.loadPixels();
  for (int i = 0; i < sectionNum; i ++) {
    for (int j = 0; j < sectionNum; j ++) {
      fillBlock(i, j, width / sectionNum);
    }
  }
  img.updatePixels();
}


void draw() {
  background(0);
  image(img, 0, 0);
  //translate(width/2,height/2);
}


void fillBlock(int x, int y, int size) {
  int rr = 0;
  int gg = 0;
  int bb = 0;
  color newColor;
  
  for (int i = 0; i < size; i ++) {
    for (int j = 0; j < size; j ++) {
      int loc = (x*size + i) + (y*size + j)* width;
      rr += red(myImage.pixels[loc]);
      gg += green(myImage.pixels[loc]);
      bb += blue(myImage.pixels[loc]);
    }
  }
  
  newColor=color(rr/(size*size),gg/(size*size),bb/(size*size));
  
  
  for (int i = 0; i < size; i ++) {
    for (int j = 0; j < size; j ++) {
      int loc = (x*size + i) + (y*size + j)* width;
      img.pixels[loc] = newColor;
    }
  }
}


/*void keyPressed() {
  if (key=='a') {
    blurScale++;
  }
  if (key=='z') {
    blurScale--;
  }
}
*/
