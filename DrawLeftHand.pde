// ロボットの左腕を描写
void DrawLeftHand(float timer) {
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

