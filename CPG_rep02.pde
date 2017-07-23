// コンピュータグラフィックス レポート2 1516016 3EP4-33 冨水 健義
final int WIDTH  = 1000;
final int HEIGHT = 800;
float rotX = PI/4;
float rotY = PI/4;

// タイマー
float myTimer;
int count;
// 背景描画用のテクスチャー
PImage backSpaceTex1, backSpaceTex2, backSpaceTex3;

// パーティクル用
ParticleSystem particleSystem1, particleSystem2;
PImage sprite;

void setup() { 
  size(WIDTH, HEIGHT, P3D);

  // パーティクルの読み込み
  orientation(LANDSCAPE);
  sprite = loadImage("sprite1.png");
  particleSystem1 = new ParticleSystem(100);
  sprite = loadImage("sprite2.png");
  particleSystem2 = new ParticleSystem(100);

  // タイマーの初期化
  myTimer = 0.0;
  count = 0;

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
  translate(width/2.0, height/2.0, -500);
  rotateX(rotX);
  rotateY(rotY);

  // 背景描画
  pushMatrix();
  translate(0, -250, 0);
  scale(2000, 1000, 2000);
  DrawBackSpace(backSpaceTex1, backSpaceTex2, backSpaceTex3);
  popMatrix();

  // ロボット描画
  count = (int)myTimer % 250; // 0～249
  pushMatrix();
  if (count != 0 && count > 125 && count <= 250) {
  } else {
    rotateY(-0.05*myTimer);
  }
  translate(500, 0, 0);
  DrawRobot(myTimer, 0, 330, 0);

  // パーティクル描画
  pushMatrix();
  translate(0, 50, 0);
  if (count != 0 && count > 125 && count <= 250) {
    particleSystem2.update();
    particleSystem2.display();
    particleSystem2.setEmitter(0, 200);
  } else {
    particleSystem1.update();
    particleSystem1.display();
    particleSystem1.setEmitter(0, 200);
  }
  // パーティクル描画終了
  popMatrix();
  // ロボット描画終了
  popMatrix();

  // タイマーを進める
  myTimer = myTimer + 0.1;
}

void mouseDragged() {
  float rate = 0.01;
  rotX += (pmouseY-mouseY) * rate;
  rotY += (mouseX-pmouseX) * rate;
}

