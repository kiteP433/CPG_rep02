// ロボット描画
void DrawRobot(float timer, int x, int y, int z) {
  // ロボットの顔を描写
  pushMatrix();
  drawFace(timer, x, y, z);
  popMatrix();

  // ロボットの身体を描写
  pushMatrix();
  drawBody(timer, x, y, z);
  popMatrix();

  // ロボットの右腕を描写
  pushMatrix();
  drawHand(timer, x, y, z, -1);
  popMatrix();

  // ロボットの左腕を描写
  pushMatrix();
  drawHand(timer, x, y, z, 1);
  popMatrix();

  // ロボットの右脚を描写
  pushMatrix();
  drawFoot(timer, x, y, z, -1);
  popMatrix();

  // ロボットの左脚を描写
  pushMatrix();
  drawFoot(timer, x, y, z, 1);
  popMatrix();
}

// ロボットの目を描写
void drawEyes(float timer, int x, int y, int z, int r, int g, int b) {
  // 右目
  fill(r, g, b);
  pushMatrix();
  translate(-35 + x, -45 + y, 125 + z);
  scale(20);
  sphere(1);
  popMatrix();

  // 左目
  fill(r, g, b);
  pushMatrix();
  translate(35 + x, -45 + y, 125 + z);
  scale(20);
  sphere(1);
  popMatrix();
}

// ロボットの顔を描写
void drawFace(float timer, int x, int y, int z) {
  int count = (int)timer % 250; // 0～249

  // 顔
  FillColor("robC1");
  pushMatrix();
  translate(0 + x, -30 + y, 55 + z);
  scale(92, 92, 92);
  sphere(1);
  popMatrix();

  // 両目
  // 目の色：赤（126countから135countは常時，136count以上180count未満では15count刻みで点滅）
  if (count != 0 && (count > 125 && count <= 135) || (count % 15 == 0 && count <= 180 && count > 135)) {
    drawEyes(timer, x, y, z, 255, 0, 0);
  }
  // 目の色：灰色（115count以内では15count刻みで点滅，126count以上では常時）
  else if (count != 0 && count % 15 == 0 && count <= 115 || count > 125) {
    drawEyes(timer, x, y, z, 100, 100, 100);
  }
  // 目の色：黄白（開始時と上記に該当していない間）
  else {
    drawEyes(timer, x, y, z, 255, 255, 210);
  }
}

// ロボットの身体を描写
void drawBody(float timer, int x, int y, int z) {
  // 首周りと肩
  FillColor("robC2");
  pushMatrix();
  translate(0 + x, 35 + y, 0 + z);
  scale(120, 120, 120);
  sphere(1);
  popMatrix();

  // 右の肩関節用の穴
  FillColor("black");
  pushMatrix();
  translate(-105 + x, 27 + y, 0 + z);
  scale(30, 37, 45);
  box(1);
  popMatrix();

  // 左の肩関節用の穴
  FillColor("black");
  pushMatrix();
  translate(105 + x, 27 + y, 0 + z);
  scale(30, 37, 45);
  box(1);
  popMatrix();

  // 胸
  FillColor("robC3");
  pushMatrix();
  translate(0 + x, 100 + y, 0 + z);
  scale(120, 80, 120);
  Pillar(1.3, 1, 1);
  popMatrix();

  // 右のネジ 
  FillColor("robC4");
  pushMatrix();
  translate(-100 + x, 100 + y, 0 + z);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  // 後ろのネジ
  FillColor("robC4");
  pushMatrix();
  translate(0 + x, 100 + y, -100 + z);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  // 左のネジ
  FillColor("robC4");
  pushMatrix();
  translate(100 + x, 100 + y, 0 + z);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  // 腹1
  FillColor("robC2");
  pushMatrix();
  translate(0 + x, 176 + y, 0 + z);
  scale(120, 40, 120);
  Pillar(1.3, 1, 1);
  popMatrix();

  // 腹2
  FillColor("robC6");
  pushMatrix();
  translate(0 + x, 210 + y, 0 + z);
  scale(115, 12, 115);
  Pillar(1.3, 1, 1);
  popMatrix();

  // 骨盤
  pushMatrix();
  FillColor("robC4");
  translate(0 + x, 220 + y, 0 + z);
  scale(80, 20, 20);
  sphere(1);
  popMatrix();
}

// ロボットの腕を描写
void drawHand(float timer, int x, int y, int z, int control) {
  int count = (int)timer % 250; // 0～249

  // 歩行処理
  if (count != 0 && count > 125) {
  } else {
    rotateZ(PI*control*sin(timer)/180);
  }

  // 肩関節
  FillColor("robC4");
  pushMatrix();
  translate((control*150) + x, 25 + y, 0 + z);
  scale(20);
  sphere(1);
  popMatrix();

  // 肩のネジ
  FillColor("robC4");
  pushMatrix();
  translate((control*122) + x, 25 + y, 0 + z);
  scale(30, 20, 20);
  box(1);
  popMatrix();

  // 上腕1
  FillColor("robC5");
  pushMatrix();
  translate((control*149) + x, 24 + y, 0 + z);
  scale(20, 43, 45);
  box(1);
  popMatrix();

  // 上腕2
  FillColor("robC5");
  pushMatrix();
  translate((control*145) + x, 57 + y, 0 + z);
  scale(28, 30, 45);
  box(1);
  popMatrix();

  // 上腕3
  FillColor("robC5");
  pushMatrix();
  translate((control*145) + x, 90 + y, 0 + z);
  scale(26, 70, 42);
  box(1);
  popMatrix();

  // 肘
  FillColor("robC4");
  pushMatrix();
  translate((control*147) + x, 130 + y, 0 + z);
  scale(14, 18, 18);
  sphere(1);
  popMatrix();

  // 前腕1
  FillColor("robC6");
  pushMatrix();
  translate((control*147) + x, 145 + y, 0 + z);
  scale(22, 15, 30);
  box(1);
  popMatrix();

  // 前腕2
  FillColor("robC6");
  pushMatrix();
  translate((control*147) + x, 155 + y, 0 + z);
  scale(20, 15, 28);
  box(1);
  popMatrix();

  // 前腕3
  FillColor("robC6");
  pushMatrix();
  translate((control*147) + x, 165 + y, 0 + z);
  scale(18, 15, 26);
  box(1);
  popMatrix();

  // 前腕4
  FillColor("robC7");
  pushMatrix();
  translate((control*147) + x, 180 + y, 0 + z);
  scale(90, 8, 90);
  Pillar(10, 0.1, 0.1);
  popMatrix();

  // 手首の関節
  FillColor("robC4");
  pushMatrix();
  translate((control*148) + x, 243 + y, 0 + z);
  scale(8, 9, 9);
  sphere(1);
  popMatrix();

  // 掌1
  FillColor("robC8");
  pushMatrix();
  translate((control*147) + x, 230 + y, 0 + z);
  scale(10, 20, 22);
  box(1);
  popMatrix();

  // 掌2
  FillColor("robC8");
  pushMatrix();
  translate((control*147) + x, 255 + y, 0 + z);
  scale(10, 25, 25);
  box(1);
  popMatrix();

  // 指1-1
  FillColor("robC9");
  pushMatrix();
  translate((control*147) + x, 270 + y, 8 + z);
  scale(40, 40, 40);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // 指1-2
  FillColor("robC10");
  pushMatrix();
  translate((control*147) + x, 290 + y, 8 + z);
  scale(8, 16, 8);
  box(1);
  ;
  popMatrix();

  /* 指2-1 */
  FillColor("robC9");
  pushMatrix();
  translate((control*147) + x, 270 + y, -8 + z);
  scale(40, 40, 40);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // 指2-2
  FillColor("robC10");
  pushMatrix();
  translate((control*147) + x, 290 + y, -8 + z);
  scale(8, 16, 8);
  box(1);
  popMatrix();

  // 指3-1
  FillColor("robC8");
  pushMatrix();
  translate((control*147) + x, 260 + y, 15+ z);
  scale(7, 14, 10 );
  box(1);
  popMatrix();

  // 指3-2
  FillColor("robC9");
  pushMatrix();
  translate((control*147) + x, 272 + y, 15 + z);
  scale(40, 10, 40);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // 指3-3
  FillColor("robC10");
  pushMatrix();
  translate((control*147) + x, 285 + y, 15 + z);
  scale(6, 16, 6);
  box(1);
  popMatrix();
}

// ロボットの脚を描写
void drawFoot(float timer, int x, int y, int z, int control) {
  int count = (int)timer % 250; // 0～249

  // 歩行処理
  if (count != 0 && count > 125) {
  } else {
    rotateX(PI*control*sin(timer)/60);
  }

  // 股関節
  FillColor("robC4");
  pushMatrix();
  translate((control*70) + x, 225 + y, 0 + z);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  // 腿1
  FillColor("robC5");
  pushMatrix();
  translate((control*55) + x, 240 + y, 0 + z);
  scale(50, 55, 55);
  box(1);
  popMatrix();

  // 腿2
  FillColor("robC5");
  pushMatrix();
  translate((control*55) + x, 260 + y, 0 + z);
  scale(45, 55, 50);
  box(1);
  popMatrix();

  // 膝
  FillColor("robC4");
  pushMatrix();
  translate((control*55) + x, 290 + y, 0 + z);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  // 脛1
  FillColor("robC6");
  pushMatrix();
  translate((control*55) + x, 315 + y, 0 + z);
  scale(30, 30, 35);
  box(1);
  popMatrix();

  // 脛2
  FillColor("robC7");
  pushMatrix();
  translate((control*55) + x, 350 + y, 0 + z);
  scale(100, 40, 100);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // 足首の関節
  FillColor("robC4");
  pushMatrix();
  translate((control*55) + x, 382 + y, 0 + z);
  scale(16, 16, 14);
  sphere(1);
  popMatrix();

  // 足首
  FillColor("robC8");
  pushMatrix();
  translate((control*55) + x, 370 + y, 0 + z);
  scale(28, 20, 30);
  box(1);
  popMatrix();

  // 足1
  FillColor("robC8");
  pushMatrix();
  translate((control*55) + x, 395 + y, 5 + z);
  scale(24, 15, 50);
  box(1);
  popMatrix();

  // 足2
  FillColor("robC11");
  pushMatrix();
  translate((control*55) + x, 405 + y, 22 + z);
  scale(55, 7, 50);
  box(1);
  popMatrix();

  // 足3
  FillColor("robC8");
  pushMatrix();
  translate((control*55) + x, 397 + y, -15 + z);
  scale(32, 23, 20);
  box(1);
  popMatrix();

  // 足4
  FillColor("robC11");
  pushMatrix();
  translate((control*55) + x, 405 + y, -22 + z);
  scale(40, 8, 30);
  box(1);
  popMatrix();
}

