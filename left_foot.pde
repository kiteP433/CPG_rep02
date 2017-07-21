void left_foot(float time) {
  int sec = (int)time % 100; /* 0～99 */
  if (sec != 0 && sec > 70 && sec <= 99) {
    
  } else {
    rotateX(PI*sin(time)/60);
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

