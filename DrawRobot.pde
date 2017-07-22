// ロボット描画
void DrawRobot(float timer) {

  // ロボットの顔を描写
  pushMatrix();
  drawFace(timer);
  popMatrix();
  
  // ロボットの身体を描写
  pushMatrix();
  drawBody();
  popMatrix();

  // ロボットの右腕を描写
  pushMatrix();
  drawRightHand(timer);
  popMatrix();

  // ロボットの左腕を描写
  pushMatrix();
  drawLeftHand(timer);
  popMatrix();

  // ロボットの右脚を描写
  pushMatrix();
  drawRightFoot(timer);
  popMatrix();

  // ロボットの左脚を描写
  pushMatrix();
  drawLeftFoot(timer);
  popMatrix();

}

// ロボットの目を描写
void drawEyes(float timer) {
  int r, g, b;// RGB値
  int sec;

  r = 255; 
  g = 255; 
  b = 210;
  sec = (int)timer % 100; /* 0～99 */

  /* eyes color Red */
  if (sec != 0 && sec > 70 && sec <= 80) {
    r = 255; 
    g = 0; 
    b = 0;
  }
  /* eyes color Gray */
  else if (sec != 0 && sec % 15 == 0 && sec <= 60 || sec > 80) {
    r = 100; 
    g = 100; 
    b = 100;
  }

  //robot right eye
  fill(r, g, b);
  pushMatrix();
  translate(-35, -45, 125);
  scale(20);
  sphere(1);
  popMatrix();

  //robot left eye
  fill(r, g, b);
  pushMatrix();
  translate(35, -45, 125);
  scale(20);
  sphere(1);
  popMatrix();
  
}


// ロボットの顔を描写
void drawFace(float timer) {
  int sec = (int)timer % 100; /* 0～99 */
  
  if (sec != 0 && sec > 70 && sec <= 99) {
  } else {
    rotateY(PI*sin(timer)/80);
    rotateZ(PI*sin(timer)/80);
  }

  //robot face
  fillColor("rob_c1");
  pushMatrix();
  translate(0, -30, 55);
  scale(92, 92, 92);
  sphere(1);
  popMatrix();

  //robot eyes
  drawEyes(timer);
  
}

// ロボットの身体を描写
void drawBody() {
  
  /* top body */
  fillColor("rob_c2");
  pushMatrix();
  translate(0, 35, 0);
  scale(120, 120, 120);
  sphere(1);
  popMatrix();

  /* body right hole*/
  fillColor("black");
  pushMatrix();
  translate(-105, 27, 0);
  scale(30, 35, 45);
  box(1);
  popMatrix();

  /* body left hole*/
  fillColor("black");
  pushMatrix();
  translate(105, 27, 0);
  scale(30, 35, 45);
  box(1);
  popMatrix();

  /* center body */
  fillColor("rob_c3");
  pushMatrix();
  translate(0, 100, 0);
  scale(120, 80, 120);
  pillar(1.3, 1, 1);
  popMatrix();

  /* body right screw */
  fillColor("rob_c4");
  pushMatrix();
  translate(-100, 100, 0);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  /* body center screw */
  fillColor("rob_c4");
  pushMatrix();
  translate(0, 100, -100);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  /* body left screw */
  fillColor("rob_c4");
  pushMatrix();
  translate(100, 100, 0);
  scale(30, 30, 30);
  sphere(1);
  popMatrix();

  /* under body1 */
  fillColor("rob_c2");
  pushMatrix();
  translate(0, 176, 0);
  scale(120, 40, 120);
  pillar(1.3, 1, 1);
  popMatrix();

  /* under body2 */
  fillColor("rob_c6");
  pushMatrix();
  translate(0, 210, 0);
  scale(115, 12, 115);
  pillar(1.3, 1, 1);
  popMatrix();


  pushMatrix();
  fillColor("rob_c4");
  translate(0, 220, 0);
  scale(80, 20, 20);
  sphere(1);
  popMatrix();
  
}

// ロボットの右腕を描写
void drawRightHand(float timer) {
  int sec = (int)timer % 100; /* 0～99 */

  if (sec != 0 && sec > 70 && sec <= 99) {
  } else {
    rotateZ(PI*-sin(timer)/80);
  }

  /* shoulder joint*/
  fillColor("rob_c4");
  pushMatrix();
  translate(-150, 25, 0);
  scale(20);
  sphere(1);
  popMatrix();

  /* shoulder screw */
  fillColor("rob_c4");
  pushMatrix();
  translate(-122, 25, 0);
  scale(30, 20, 20);
  box(1);
  popMatrix();

  /* upper arm1 */
  fillColor("rob_c5");
  pushMatrix();
  translate(-149, 24, 0);
  scale(20, 43, 45);
  box(1);
  popMatrix();

  /* upper arm2 */
  fillColor("rob_c5");
  pushMatrix();
  translate(-145, 57, 0);
  scale(28, 30, 45);
  box(1);
  popMatrix();

  /* upper arm3 */
  fillColor("rob_c5");
  pushMatrix();
  translate(-145, 90, 0);
  scale(26, 70, 42);
  box(1);
  popMatrix();

  /* arm joint */
  fillColor("rob_c4");
  pushMatrix();
  translate(-147, 130, 0);
  scale(14, 18, 18);
  sphere(1);
  popMatrix();

  /* forearm1 */
  fillColor("rob_c6");
  pushMatrix();
  translate(-147, 145, 0);
  scale(22, 15, 30);
  box(1);
  popMatrix();

  /* forearm2 */
  fillColor("rob_c6");
  pushMatrix();
  translate(-147, 155, 0);
  scale(20, 15, 28);
  box(1);
  popMatrix();

  /* forearm3 */
  fillColor("rob_c6");
  pushMatrix();
  translate(-147, 165, 0);
  scale(18, 15, 26);
  box(1);
  popMatrix();

  /* forearm4 */
  fillColor("rob_c7");
  pushMatrix();
  translate(-147, 180, 0);
  scale(90, 8, 90);
  pillar(10, 0.1, 0.1);
  popMatrix();

  /* hand joint */
  fillColor("rob_c4");
  pushMatrix();
  translate(-148, 243, 0);
  scale(8, 9, 9);
  sphere(1);
  popMatrix();

  /* hand1 */
  fillColor("rob_c8");
  pushMatrix();
  translate(-147, 230, 0);
  scale(10, 20, 22);
  box(1);
  popMatrix();

  /* hand2 */
  fillColor("rob_c8");
  pushMatrix();
  translate(-147, 255, 0);
  scale(10, 25, 25);
  box(1);
  popMatrix();

  /* finger1-1 */
  fillColor("rob_c9");
  pushMatrix();
  translate(-147, 270, 8);
  scale(40, 40, 40);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* finger1-2 */
  fillColor("rob_c10");
  pushMatrix();
  translate(-147, 290, 8);
  scale(8, 16, 8);
  box(1);
  ;
  popMatrix();

  /* finger2-1 */
  fillColor("rob_c9");
  pushMatrix();
  translate(-147, 270, -8);
  scale(40, 40, 40);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* finger2-2 */
  fillColor("rob_c10");
  pushMatrix();
  translate(-147, 290, -8);
  scale(8, 16, 8);
  box(1);
  popMatrix();

  /* finger3-1 */
  fillColor("rob_c8");
  pushMatrix();
  translate(-147, 260, 15);
  scale(7, 14, 10);
  box(1);
  popMatrix();

  /* finger3-2 */
  fillColor("rob_c9");
  pushMatrix();
  translate(-147, 272, 15);
  scale(40, 10, 40);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* finger3-3 */
  fillColor("rob_c10");
  pushMatrix();
  translate(-147, 285, 15);
  scale(6, 16, 6);
  box(1);
  popMatrix();
  
}

// ロボットの左腕を描写
void drawLeftHand(float timer) {
  int sec = (int)timer % 100; /* 0～99 */

  if (sec != 0 && sec > 70 && sec <= 99) {
  } else {
    rotateZ(PI*sin(timer)/80);
  }

  /* shoulder joint*/
  fillColor("rob_c4");
  pushMatrix();
  translate(150, 25, 0);
  scale(20);
  sphere(1);
  popMatrix();

  /* shoulder screw */
  fillColor("rob_c4");
  pushMatrix();
  translate(122, 25, 0);
  scale(30, 20, 20);
  box(1);
  popMatrix();

  /* upper arm1 */
  fillColor("rob_c5");
  pushMatrix();
  translate(149, 24, 0);
  scale(20, 43, 45);
  box(1);
  popMatrix();

  /* upper arm2 */
  fillColor("rob_c5");
  pushMatrix();
  translate(145, 57, 0);
  scale(28, 30, 45);
  box(1);
  popMatrix();

  /* upper arm3 */
  fillColor("rob_c5");
  pushMatrix();
  translate(145, 90, 0);
  scale(26, 70, 42);
  box(1);
  popMatrix();

  /* arm joint */
  fillColor("rob_c4");
  pushMatrix();
  translate(147, 130, 0);
  scale(14, 18, 18);
  sphere(1);
  popMatrix();

  /* forearm1 */
  fillColor("rob_c6");
  pushMatrix();
  translate(147, 145, 0);
  scale(22, 15, 30);
  box(1);
  popMatrix();

  /* forearm2 */
  fillColor("rob_c6");
  pushMatrix();
  translate(147, 155, 0);
  scale(20, 15, 28);
  box(1);
  popMatrix();

  /* forearm3 */
  fillColor("rob_c6");
  pushMatrix();
  translate(147, 165, 0);
  scale(18, 15, 26);
  box(1);
  popMatrix();

  /* forearm4 */
  fillColor("rob_c7");
  pushMatrix();
  translate(147, 180, 0);
  scale(90, 8, 90);
  pillar(10, 0.1, 0.1);
  popMatrix();

  /* hand joint */
  fillColor("rob_c4");
  pushMatrix();
  translate(148, 243, 0);
  scale(8, 9, 9);
  sphere(1);
  popMatrix();

  /* hand1 */
  fillColor("rob_c8");
  pushMatrix();
  translate(147, 230, 0);
  scale(10, 20, 22);
  box(1);
  popMatrix();

  /* hand2 */
  fillColor("rob_c8");
  pushMatrix();
  translate(147, 255, 0);
  scale(10, 25, 25);
  box(1);
  popMatrix();

  /* finger1-1 */
  fillColor("rob_c9");
  pushMatrix();
  translate(147, 270, 8);
  scale(40, 40, 40);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* finger1-2 */
  fillColor("rob_c10");
  pushMatrix();
  translate(147, 290, 8);
  scale(8, 16, 8);
  box(1);
  ;
  popMatrix();

  /* finger2-1 */
  fillColor("rob_c9");
  pushMatrix();
  translate(147, 270, -8);
  scale(40, 40, 40);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* finger2-2 */
  fillColor("rob_c10");
  pushMatrix();
  translate(147, 290, -8);
  scale(8, 16, 8);
  box(1);
  popMatrix();

  /* finger3-1 */
  fillColor("rob_c8");
  pushMatrix();
  translate(147, 260, 15);
  scale(7, 14, 10);
  box(1);
  popMatrix();

  /* finger3-2 */
  fillColor("rob_c9");
  pushMatrix();
  translate(147, 272, 15);
  scale(40, 10, 40);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* finger3-3 */
  fillColor("rob_c10");
  pushMatrix();
  translate(147, 285, 15);
  scale(6, 16, 6);
  box(1);
  popMatrix();
  
}

// ロボットの右脚を描写
void drawRightFoot(float timer) {
  int sec = (int)timer % 100; /* 0～99 */

  if (sec != 0 && sec > 70 && sec <= 99) {
  } else {
    rotateX(PI*-sin(timer)/60);
  }

  /* hip joint */
  fillColor("rob_c4");
  pushMatrix();
  translate(-70, 225, 0);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  /* thigh1 */
  fillColor("rob_c5");
  pushMatrix();
  translate(-55, 240, 0);
  scale(50, 55, 55);
  box(1);
  popMatrix();

  /* thigh2 */
  fillColor("rob_c5");
  pushMatrix();
  translate(-55, 260, 0);
  scale(45, 55, 50);
  box(1);
  popMatrix();

  /* joint1 */
  fillColor("rob_c4");
  pushMatrix();
  translate(-55, 290, 0);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  /* knee1 */
  fillColor("rob_c6");
  pushMatrix();
  translate(-55, 315, 0);
  scale(30, 30, 35);
  box(1);
  popMatrix();

  /* knee2 */
  fillColor("rob_c7");
  pushMatrix();
  translate(-55, 350, 0);
  scale(100, 40, 100);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* joint2 */
  fillColor("rob_c4");
  pushMatrix();
  translate(-55, 382, 0);
  scale(16, 16, 14);
  sphere(1);
  popMatrix();

  /* ankle */
  fillColor("rob_c8");
  pushMatrix();
  translate(-55, 370, 0);
  scale(28, 20, 30);
  box(1);
  popMatrix();

  /* foot1 */
  fillColor("rob_c8");
  pushMatrix();
  translate(-55, 395, 5);
  scale(24, 15, 50);
  box(1);
  popMatrix();

  /* foot2 */
  fillColor("rob_c11");
  pushMatrix();
  translate(-55, 405, 22);
  scale(55, 7, 50);
  box(1);
  popMatrix();

  /* foot3 */
  fillColor("rob_c8");
  pushMatrix();
  translate(-55, 397, -15);
  scale(32, 23, 20);
  box(1);
  popMatrix();

  /* foot4 */
  fillColor("rob_c11");
  pushMatrix();
  translate(-55, 405, -22);
  scale(40, 8, 30);
  box(1);
  popMatrix();
  
}

// ロボットの左脚を描写
void drawLeftFoot(float timer) {
  int sec = (int)timer % 100; /* 0～99 */
  
  if (sec != 0 && sec > 70 && sec <= 99) {
  } else {
    rotateX(PI*sin(timer)/60);
  }
  
  /* hip joint */
  fillColor("rob_c4");
  pushMatrix();
  translate(70, 225, 0);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  /* thigh1 */
  fillColor("rob_c5");
  pushMatrix();
  translate(55, 240, 0);
  scale(50, 55, 55);
  box(1);
  popMatrix();

  /* thigh2 */
  fillColor("rob_c5");
  pushMatrix();
  translate(55, 260, 0);
  scale(45, 55, 50);
  box(1);
  popMatrix();

  /* joint1 */
  fillColor("rob_c4");
  pushMatrix();
  translate(55, 290, 0);
  scale(20, 20, 20);
  sphere(1);
  popMatrix();

  /* knee1 */
  fillColor("rob_c6");
  pushMatrix();
  translate(55, 315, 0);
  scale(30, 30, 35);
  box(1);
  popMatrix();

  /* knee2 */
  fillColor("rob_c7");
  pushMatrix();
  translate(55, 350, 0);
  scale(100, 40, 100);
  pillar(1, 0.1, 0.1);
  popMatrix();

  /* joint2 */
  fillColor("rob_c4");
  pushMatrix();
  translate(55, 382, 0);
  scale(16, 16, 14);
  sphere(1);
  popMatrix();

  /* ankle */
  fillColor("rob_c8");
  pushMatrix();
  translate(55, 370, 0);
  scale(28, 20, 30);
  box(1);
  popMatrix();

  /* foot1 */
  fillColor("rob_c8");
  pushMatrix();
  translate(55, 395, 5);
  scale(24, 15, 50);
  box(1);
  popMatrix();

  /* foot2 */
  fillColor("rob_c11");
  pushMatrix();
  translate(55, 405, 22);
  scale(55, 7, 50);
  box(1);
  popMatrix();

  /* foot3 */
  fillColor("rob_c8");
  pushMatrix();
  translate(55, 397, -15);
  scale(32, 23, 20);
  box(1);
  popMatrix();

  /* foot4 */
  fillColor("rob_c11");
  pushMatrix();
  translate(55, 405, -22);
  scale(40, 8, 30);
  box(1);
  popMatrix();
  
}

