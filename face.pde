void face(float time) {
  int sec = (int)time % 100; /* 0～99 */
  if (sec != 0 && sec > 70 && sec <= 99) {
    
  } else {
    rotateY(PI*sin(time)/80);
    rotateZ(PI*sin(time)/80);
  }

  //robot face
  fillColor("rob_c1");
  pushMatrix();
  translate(0, -30, 55);
  scale(92, 92, 92);
  sphere(1);
  popMatrix();

  //robot eyes
  eyes(time);
}

