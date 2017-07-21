// ロボットの顔を描写
void DrawFace(float timer) {
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
  DrawEyes(timer);
  
}

