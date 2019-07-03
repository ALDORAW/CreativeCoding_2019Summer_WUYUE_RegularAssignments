EcWiper pbTheWiper;
ArrayList<EcPinky> pbHisPinkyList;
//--
//--

void setup() {size(500, 500);
  frameRate(30);noStroke();textAlign(LEFT,TOP);ellipseMode(CENTER);
  frame.setTitle("MsWiper");
  //--
  pbTheWiper=new EcWiper();
  //--
  pbHisPinkyList=new ArrayList<EcPinky>();
  for(int i=0;i<100;i++){
    pbHisPinkyList.add(new EcPinky());
  }
  
  //--
}//+++



void draw() { 
  background(0);
  //--
  for(EcPinky it:pbHisPinkyList){
    it.ccUpdate();
    it.ccGotDragged(pbTheWiper.cmX);
    if(pbTheWiper.cmIsAtTheVeryEnd){it.ccReset();}
  }
  pbTheWiper.ccUpdate();
  //--
}//+++


class EcWiper{
  float cmX;
  boolean cmIsAtTheVeryEnd;
  EcWiper(){
    cmX=0;
    cmIsAtTheVeryEnd=false;
  }
  //--
  void ccUpdate(){
    cmX+=1.2f;if(cmIsAtTheVeryEnd){cmX=0;}
    stroke(0xEE,0x33,0x33);line(cmX,0,cmX,height);noStroke();
    cmIsAtTheVeryEnd=(cmX>499);
  }
  //--
}

class EcPinky{
  PVector cmPos;
  float cmDia;
  EcPinky(){
    cmPos=new PVector(random(1,499),random(1,499));
    cmDia=random(1,30);
  }
  //--
  void ccUpdate(){
    fill(0xFF,0x64);
    ellipse(cmPos.x, cmPos.y, cmDia, cmDia);
  }
  //--
  void ccGotDragged(float pxLine){
    cmPos.x=pxLine>cmPos.x?pxLine:cmPos.x;
  }
  void ccReset(){
    cmPos.x=random(1,499);
    cmPos.y=random(1,499);
  }
  //--
}//+++
