// ロボットの身体を描写
void DrawBody() {
  
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

