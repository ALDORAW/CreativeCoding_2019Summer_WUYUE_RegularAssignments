PImage img;

void setup() {
  size(601, 600);
  background(0);
  //img = createImage(width, height, RGB);
  initiate();
}

void initiate() {
  img = createImage(width, height, RGB);

  img.loadPixels();
  //for(int i = 0; i < img.pixels.length; i++){
  //  img.pixels[i] = color(random(255), random(255), random(255));
  //}

  for (int i = 0; i < width; i ++) {
    for (int j = 0; j < height; j ++) {
      if (i % 20 == 0 && j % 20==0) {
        img.pixels[i+j*width] = color(0, 0, 0);
      } else {
        img.pixels[i+j*width] = color(255, 255, 255);
      }
    }
    img.updatePixels();
  }
}

void draw() {
  background(0);

  image(img, 0, 0);
}
