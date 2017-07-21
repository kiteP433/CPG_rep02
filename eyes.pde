void eyes(float time) {
  int r, g, b;
  int sec;

  r = 255; 
  g = 255; 
  b = 210;
  sec = (int)time % 100; /* 0～99 */

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

