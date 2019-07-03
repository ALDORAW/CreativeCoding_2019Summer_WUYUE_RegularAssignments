class Ball{
  PVector location;
  float dd;
  int indexNum;
  
  Ball(PVector loc, float d, int index){
    location=loc;
    dd=d;
    indexNum=index;
  }
  
  void show(){
    fill(255);
    noStroke();
    ellipse(location.x, location.y, dd, dd);
    fill(#D67D7D);
    textAlign(CENTER,CENTER);
    text(indexNum, location.x, location.y); 
  }
  void connection(){
    for(Ball other: theBall){
      float ddd=PVector.dist(other.location,location);
      if(ddd>0 && ddd<50){
        stroke(#70AAE3);
        line(other.location.x, other.location.y, location.x, location.y);
      }
    }
  }
  
  
}
