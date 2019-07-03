import processing.serial.*;
Serial myPort;
String  val;
void setup() {
  // 全屏
  fullScreen(P3D);
  // 文字大小
  textSize(32);
  // 打印目前你设备管理器中端口列表，找到你Arduino正在使用的端口在该list表中的下标
  for(int i =0;i<Serial.list().length;i++){
  print(Serial.list()[i]);
  }
  //[1] 端口在你电脑的排序
  String receiveMsg =  Serial.list()[1];
  myPort = new Serial(this, receiveMsg, 9600);
}
float timer = 0;
boolean isRotateRight = true;
void draw() {
  if ( myPort.available() > 0){
  val = myPort.readString();         // read it and store it in val
 print(val); //print it out in the console 
  if ( val.equals("1")) {
    isRotateRight = true;
  } 
  else if(val.equals("2")) {
    isRotateRight = false;   
  }

  
  }
  if (isRotateRight) {
    Rotate(1,"Arduino LIGHTING RIGHT！");
  } else {
    Rotate(-1,"Arduino LIGHTING LEFT！");
  }
  timer = (timer+0.01)%TWO_PI;
  text(year() + "年"  + month()+ "月" + day()+ "日" +hour()+ "时" + 
    minute()+ "分" +second()+ "秒", 50, height-50, 0);
}

void Rotate(int num,String str) {
  //背景
  background(0);
  // 绿色边框
  stroke(#74F599);
  //不设置填充
  noFill();
  // 环境光
  lights();
  //将当前变换矩阵推送到矩阵堆栈
  pushMatrix();
  translate(width/2, height/2, 200 * sin(timer));
  // 鼠标左键拖动旋转
  if (mouseButton == LEFT) {
    rotateX(mouseY * 0.05);
    rotateY(mouseX * 0.05);
    // 通过调整球体网格的顶点数量来控制用于渲染球体的细节。默认分辨率为30
    sphereDetail(mouseX / 4);
  }
  // y 轴旋转
  rotateY(timer*num);

  // x 轴旋转30
  rotateX(PI/6*num);

  //球密度
  sphere(300);
  // 球体中部文字
  textMode(CENTER);
  fill(255, 0, 0);
  text(str, -300, 0, 0);
  popMatrix();
}
void mouseClicked() {  
  // 鼠标右键保存图片
  if (mouseButton == RIGHT) {          
    String picName = "PDE_" + year()+ "_" + month()+"_" + day()+"_" +   
      hour()+"_" + minute()+"_" + second();  
    save(picName + ".png");  
    println(" ----> Picture saved.");
  }
}
