// Computer graphics report2 1516016 3EP4-33 Tomizu Tastuyoshi.
// Robot drawing.
void DrawRobot (float timer, int x, int y, int z) {
  // Draw robot's head.
  pushMatrix();
  drawHead(timer, x, y, z);
  popMatrix();

  // Draw robot's body.
  pushMatrix();
  drawBody(timer, x, y, z);
  popMatrix();

  // Draw robot's right arm.
  pushMatrix();
  drawHand(timer, x, y, z, -1);
  popMatrix();

  // Draw robot's left arm.
  pushMatrix();
  drawHand(timer, x, y, z, 1);
  popMatrix();

  // Draw robot's right leg.
  pushMatrix();
  drawFoot(timer, x, y, z, -1);
  popMatrix();

  // Draw robot's left leg.
  pushMatrix();
  drawFoot(timer, x, y, z, 1);
  popMatrix();
}

// Draw robot's eyes.
void drawEyes(float timer, int x, int y, int z, int r, int g, int b) {
  // Right eye.
  fill(r, g, b);
  pushMatrix();
  translate(-35 + x, -45 + y, 125 + z);
  scale(20);
  sphere(1);
  popMatrix();

  // Left eye.
  fill(r, g, b);
  pushMatrix();
  translate(35 + x, -45 + y, 125 + z);
  scale(20);
  sphere(1);
  popMatrix();
}

// Draw robot's head.
void drawHead(float timer, int x, int y, int z) {
  int count = (int)timer % 250; // 0～249

  // Face.
  FillColor("robC1");
  pushMatrix();
  translate(0 + x, -30 + y, 55 + z);
  scale(92, 92, 92);
  sphere(1);
  popMatrix();

  // Eyes.
  // Eye color:red.
  if (count != 0 && (count > 125 && count <= 135) || (count % 15 == 0 && count <= 180 && count > 135)) {
    drawEyes(timer, x, y, z, 255, 0, 0);
  }
  // Eye color:gray.
  else if (count != 0 && count % 15 == 0 && count <= 115 || count > 125) {
    drawEyes(timer, x, y, z, 100, 100, 100);
  }
  // Eye color:normal(yellowish white).
  else {
    drawEyes(timer, x, y, z, 255, 255, 210);
  }
}

// Draw robot's body.
void drawBody(float timer, int x, int y, int z) {
  // Neck and shoulder.
  FillColor("robC2");
  pushMatrix();
  translate(0 + x, 35 + y, 0 + z);
  scale(120, 120, 120);
  sphere(1);
  popMatrix();

  // Right shoulder joint.
  FillColor("black");
  pushMatrix();
  translate(-105 + x, 27 + y, 0 + z);
  scale(30, 37, 45);
  box(1);
  popMatrix();

  // Left shoulder joint.
  FillColor("black");
  pushMatrix();
  translate(105 + x, 27 + y, 0 + z);
  scale(30, 37, 45);
  box(1);
  popMatrix();

  // Breast.
  FillColor("robC3");
  pushMatrix();
  translate(0 + x, 100 + y, 0 + z);
  scale(120, 80, 120);
  Pillar(1.3, 1, 1);
  popMatrix();

  // Right screw.
  FillColor("robC4");
  pushMatrix();
  translate(-100 + x, 100 + y, 0 + z);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  // Back screw.
  FillColor("robC4");
  pushMatrix();
  translate(0 + x, 100 + y, -100 + z);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  // Left screw.
  FillColor("robC4");
  pushMatrix();
  translate(100 + x, 100 + y, 0 + z);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  // Abdomen 1.
  FillColor("robC2");
  pushMatrix();
  translate(0 + x, 176 + y, 0 + z);
  scale(120, 40, 120);
  Pillar(1.3, 1, 1);
  popMatrix();

  // Abdomen 2.
  FillColor("robC6");
  pushMatrix();
  translate(0 + x, 210 + y, 0 + z);
  scale(115, 12, 115);
  Pillar(1.3, 1, 1);
  popMatrix();

  // Pelvis.
  pushMatrix();
  FillColor("robC4");
  translate(0 + x, 220 + y, 0 + z);
  scale(80, 20, 20);
  sphere(1);
  popMatrix();
}

// Draw robot's arm.
void drawHand(float timer, int x, int y, int z, int control) {
  int count = (int)timer % 250; // 0～249

  // Walking process.
  if (count != 0 && count > 125) {
  } else {
    rotateZ(PI*control*sin(timer)/180);
  }

  // Shoulder joint.
  FillColor("robC4");
  pushMatrix();
  translate((control*150) + x, 25 + y, 0 + z);
  scale(20);
  sphere(1);
  popMatrix();

  // Shoulder screw.
  FillColor("robC4");
  pushMatrix();
  translate((control*122) + x, 25 + y, 0 + z);
  scale(30, 20, 20);
  box(1);
  popMatrix();

  // Upper arm 1.
  FillColor("robC5");
  pushMatrix();
  translate((control*149) + x, 24 + y, 0 + z);
  scale(20, 43, 45);
  box(1);
  popMatrix();

  // Upper arm 2.
  FillColor("robC5");
  pushMatrix();
  translate((control*145) + x, 57 + y, 0 + z);
  scale(28, 30, 45);
  box(1);
  popMatrix();

  // Upper arm 3.
  FillColor("robC5");
  pushMatrix();
  translate((control*145) + x, 90 + y, 0 + z);
  scale(26, 70, 42);
  box(1);
  popMatrix();

  // Elbow.
  FillColor("robC4");
  pushMatrix();
  translate((control*147) + x, 130 + y, 0 + z);
  scale(14, 18, 18);
  sphere(1);
  popMatrix();

  // Forearm 1.
  FillColor("robC6");
  pushMatrix();
  translate((control*147) + x, 145 + y, 0 + z);
  scale(22, 15, 30);
  box(1);
  popMatrix();

  // Forearm 2.
  FillColor("robC6");
  pushMatrix();
  translate((control*147) + x, 155 + y, 0 + z);
  scale(20, 15, 28);
  box(1);
  popMatrix();

  // Forearm 3.
  FillColor("robC6");
  pushMatrix();
  translate((control*147) + x, 165 + y, 0 + z);
  scale(18, 15, 26);
  box(1);
  popMatrix();

  // Forearm 4.
  FillColor("robC7");
  pushMatrix();
  translate((control*147) + x, 180 + y, 0 + z);
  scale(90, 8, 90);
  Pillar(10, 0.1, 0.1);
  popMatrix();

  // Wrist joint.
  FillColor("robC4");
  pushMatrix();
  translate((control*148) + x, 243 + y, 0 + z);
  scale(8, 9, 9);
  sphere(1);
  popMatrix();

  // Palm 1.
  FillColor("robC8");
  pushMatrix();
  translate((control*147) + x, 230 + y, 0 + z);
  scale(10, 20, 22);
  box(1);
  popMatrix();

  // Palm 2.
  FillColor("robC8");
  pushMatrix();
  translate((control*147) + x, 255 + y, 0 + z);
  scale(10, 25, 25);
  box(1);
  popMatrix();

  // Finger 1-1.
  FillColor("robC9");
  pushMatrix();
  translate((control*147) + x, 270 + y, 8 + z);
  scale(40, 40, 40);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // Finger 1-2.
  FillColor("robC10");
  pushMatrix();
  translate((control*147) + x, 290 + y, 8 + z);
  scale(8, 16, 8);
  box(1);
  ;
  popMatrix();

  // Finger 2-1.
  FillColor("robC9");
  pushMatrix();
  translate((control*147) + x, 270 + y, -8 + z);
  scale(40, 40, 40);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // Finger 2-2.
  FillColor("robC10");
  pushMatrix();
  translate((control*147) + x, 290 + y, -8 + z);
  scale(8, 16, 8);
  box(1);
  popMatrix();

  // Finger 3-1.
  FillColor("robC8");
  pushMatrix();
  translate((control*147) + x, 260 + y, 15+ z);
  scale(7, 14, 10 );
  box(1);
  popMatrix();

  // Finger 3-2.
  FillColor("robC9");
  pushMatrix();
  translate((control*147) + x, 272 + y, 15 + z);
  scale(40, 10, 40);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // Finger 3-3.
  FillColor("robC10");
  pushMatrix();
  translate((control*147) + x, 285 + y, 15 + z);
  scale(6, 16, 6);
  box(1);
  popMatrix();
}

// Draw robot's leg.
void drawFoot(float timer, int x, int y, int z, int control) {
  int count = (int)timer % 250; // 0～249

  // Walking process.
  if (count != 0 && count > 125) {
  } else {
    rotateX(PI*control*sin(timer)/60);
  }

  // Hip joint.
  FillColor("robC4");
  pushMatrix();
  translate((control*70) + x, 225 + y, 0 + z);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  // Thigh 1.
  FillColor("robC5");
  pushMatrix();
  translate((control*55) + x, 240 + y, 0 + z);
  scale(50, 55, 55);
  box(1);
  popMatrix();

  // Thigh 2.
  FillColor("robC5");
  pushMatrix();
  translate((control*55) + x, 260 + y, 0 + z);
  scale(45, 55, 50);
  box(1);
  popMatrix();

  // Knee.
  FillColor("robC4");
  pushMatrix();
  translate((control*55) + x, 290 + y, 0 + z);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  // Shin 1.
  FillColor("robC6");
  pushMatrix();
  translate((control*55) + x, 315 + y, 0 + z);
  scale(30, 30, 35);
  box(1);
  popMatrix();

  // Shin 2.
  FillColor("robC7");
  pushMatrix();
  translate((control*55) + x, 350 + y, 0 + z);
  scale(100, 40, 100);
  Pillar(1, 0.1, 0.1);
  popMatrix();

  // Ankle joint.
  FillColor("robC4");
  pushMatrix();
  translate((control*55) + x, 382 + y, 0 + z);
  scale(16, 16, 14);
  sphere(1);
  popMatrix();

  // Ankle.
  FillColor("robC8");
  pushMatrix();
  translate((control*55) + x, 370 + y, 0 + z);
  scale(28, 20, 30);
  box(1);
  popMatrix();

  // Foot 1.
  FillColor("robC8");
  pushMatrix();
  translate((control*55) + x, 395 + y, 5 + z);
  scale(24, 15, 50);
  box(1);
  popMatrix();

  // Foot 2.
  FillColor("robC11");
  pushMatrix();
  translate((control*55) + x, 405 + y, 22 + z);
  scale(55, 7, 50);
  box(1);
  popMatrix();

  // Foot 3.
  FillColor("robC8");
  pushMatrix();
  translate((control*55) + x, 397 + y, -15 + z);
  scale(32, 23, 20);
  box(1);
  popMatrix();

  // Foot 4.
  FillColor("robC11");
  pushMatrix();
  translate((control*55) + x, 405 + y, -22 + z);
  scale(40, 8, 30);
  box(1);
  popMatrix();
}

