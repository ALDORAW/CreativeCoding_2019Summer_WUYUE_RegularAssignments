class Ball {
  PVector location;
  PVector speed;
  PVector acce;
  float dd;
  float x = random(width);
  float y = random(height);
  int indexNum;
  int elliLength = 10;



  Ball(PVector loc, PVector sp, PVector ac, float d, int index) {
    location=loc;
    speed=sp;
    acce=ac;
    dd=d;
    indexNum=index;
  }


  void show() {
    fill(random(250), random(250), random(250));
    smooth();
    noStroke();
    ellipse(location.x, location.y, dd, dd);
    float x = random(width);
    float y = random(height);
    fill(255);
    noStroke();
    ellipse(x, y, dd, dd);
  }



void collision() {
  int elliLength = 10;
  if (mousePressed==true) {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector locWhite = new PVector(x,y);
    PVector bound = PVector.sub(locWhite, mouse);
    bound.normalize();
    bound.mult(50/dd);
    acce.add(bound);
  }

  for (int i = 0; i < elliLength; i ++) {
    float ddist=dist(x, y, location.x, location.y);
    if (ddist<=dd) {
      speed.x=speed.x*-1;
      speed.y=speed.y*-1;
    }
  }
}




void edge() {
  int elliLength = 10;
  for (int i = 0; i < elliLength; i ++) {

    if (location.x + dd/2 > width) {
      location.x = width - dd/2;
      speed.x = speed.x *-1;
    }

    if (location.x - dd/2 < 0) {
      location.x = dd/2;
      speed.x = speed.x *-1;
    }

    if (location.y + dd/2 > height) {
      location.y = height - dd/2;
      speed.y *=-1;
    }

    if (location.y  - dd/2 < 0) {
      location.y = dd/2;
      speed.y *=-1;
    }
  }

  for (int i = 0; i < elliLength; i ++) {

    if (x + dd/2 > width) {
      x = width - dd/2;
      speed.x = speed.x *-1;
    }

    if (x - dd/2 < 0) {
      x = dd/2;
      speed.x = speed.x *-1;
    }

    if (y + dd/2 > height) {
      y = height - dd/2;
      speed.y *=-1;
    }

    if (y  - dd/2 < 0) {
      y = dd/2;
      speed.y *=-1;
    }
  }
}

}
