class Ball {
  PVector location;
  float dd;
  PVector[] location1;
  float[] dd1;
  int indexNum;
  PVector[] speed;
  PVector[] acc;
  int elliLength = 10;

  Ball(PVector loc, float d, int index) {
    location = loc;
    dd = d;
    indexNum=index;
  }
  void showing() {
    location1 = new PVector[elliLength];
    dd1 = new float[elliLength];
    speed = new PVector[elliLength];
    acc = new PVector[elliLength];
    for (int i = 0; i < elliLength; i ++) {
      location1[i] = new PVector(random(width), random(height));
      dd1[i] = random(30, 60);
      speed[i] = new PVector(random(1, 5), random(1, 5));
      acc[i] = new PVector(0, 0);
    }
  }

   /*   void show() {
      fill(255);
      ellipse(location.x, location.y, dd, dd);
      fill(#5493E8);
      textAlign(CENTER, CENTER);
      text(indexNum, location.x, location.y);
    }
  void draw() {
    background(0);
    collision();
    edge();  
    drawEllipse();
  }   */


  void collision() {
    for (int i = 0; i < elliLength; i ++) {
      for (int j = 0; j < elliLength; j ++) {
        if (i != j) {
          float ddist = PVector.dist(location1[i], location1[j]);
          if (ddist < (dd1[i] + dd1[j])/2) {
            PVector pong = PVector.sub(location1[i], location1[j]);
            pong.normalize();
            pong.mult(50/dd1[i]);
            acc[i].add(pong);
          }
        }
      }
    }
  }

  void drawArrow() {
    for (int i = 0; i < elliLength; i ++) {
      float ang = speed[i].heading();
      stroke(#6460E3);
      float arrowLength = 10;
      PVector headLocation = new PVector(location1[i].x+10*speed[i].mag()*cos(ang), location1[i].y+10*speed[i].mag()*sin(ang));
      line(location1[i].x, location1[i].y, headLocation.x, headLocation.y);
      line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang + PI*3/4), headLocation.y + arrowLength*sin(ang + PI*3/4));
      line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang - PI*3/4), headLocation.y + arrowLength*sin(ang -PI*3/4));
  }
}

void drawEllipse() {
  for (int i = 0; i < elliLength; i ++) {
    fill((int)map(i, 0, elliLength-1, 50, 200));
    noStroke();
    ellipse(location1[i].x, location1[i].y, dd1[i], dd1[i]);
    
    //draw Arrows at the end of each speed vectors
    float ang = speed[i].heading();
    stroke(255); //stroke(#9C9AEA);
    float arrowLength = 10;
    PVector headLocation = new PVector(location1[i].x+10*speed[i].mag()*cos(ang), location1[i].y+10*speed[i].mag()*sin(ang));
    line(location1[i].x, location1[i].y, headLocation.x, headLocation.y);
    line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang + PI*3/4), headLocation.y + arrowLength*sin(ang + PI*3/4));
    line(headLocation.x, headLocation.y, headLocation.x + arrowLength*cos(ang - PI*3/4), headLocation.y + arrowLength*sin(ang - PI*3/4));
    
    speed[i].add(acc[i]);
    speed[i].limit(10);
    location1[i].add(speed[i]);
    acc[i] = new PVector(0, 0);
  }
}

void connection() {
  for (int i = 0; i < elliLength; i ++) {
    for (int j = 0; j < elliLength; j ++) {
      if (i != j) {
        float ddist = PVector.dist(location1[i], location1[j]);
        if (ddist < 50) {
          stroke(#9ED12A);
          line(location1[i].x, location1[i].y, location1[j].x, location1[j].y);
        }
      }
    }
  }
}

void edge() {
  for (int i = 0; i < elliLength; i ++) {

    if (location1[i].x + dd1[i]/2 > width) {
      location1[i].x = width - dd1[i]/2;
      speed[i].x = speed[i].x *-1;
    }

    if (location1[i].x - dd1[i]/2 < 0) {
      location1[i].x = dd1[i]/2;
      speed[i].x = speed[i].x *-1;
    }

    if (location1[i].y + dd1[i]/2 > height) {
      location1[i].y = height - dd1[i]/2;
      speed[i].y *=-1;
    }

    if (location1[i].y  - dd1[i]/2 < 0) {
      location1[i].y = dd1[i]/2;
      speed[i].y *=-1;
    }
  }
}
}
