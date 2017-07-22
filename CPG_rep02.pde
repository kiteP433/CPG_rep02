// コンピュータグラフィックス レポート2 1516016 3EP4-33 冨水 健義
final int WIDTH  = 1000;
final int HEIGHT = 1000;
float rotX = PI/4;
float rotY = PI/4;

// タイマー
float myTimer;

// 背景描画用のテクスチャー
PImage backSpaceTex1, backSpaceTex2, backSpaceTex3;

void setup() { 
  size(WIDTH, HEIGHT, P3D);
  myTimer = 0.0;

  // 背景描画用のテクスチャーの読み込み
  backSpaceTex1 = loadImage("data/backSpaceTex1.jpg");
  backSpaceTex2 = loadImage("data/backSpaceTex2.jpg");
  backSpaceTex3 = loadImage("data/backSpaceTex3.jpg");

  textureMode(NORMAL);
  fill(255);
} 

void draw() { 
  background(0);
  lights();
  noStroke();
  translate(width/2.0, height/2.0 + 200, -700);
  rotateX(rotX);
  rotateY(rotY);

  // 背景描画
  pushMatrix();
  translate(0, -1085, 0);
  scale(3000, 1500, 3000);
  DrawBackSpace(backSpaceTex1, backSpaceTex2, backSpaceTex3);
  popMatrix();

  // ロボット描画
  pushMatrix();
  rotateY(-0.1*myTimer);
  translate(500, 0, 0);
  DrawRobot(myTimer, 0, 0, 0);
  popMatrix();

  // タイマーを進める
  myTimer = myTimer + 0.1;
  
}

void mouseDragged() {
  float rate = 0.01;

  rotX += (pmouseY-mouseY) * rate;
  rotY += (mouseX-pmouseX) * rate;
  
}

