// Computer graphics report2 1516016 3EP4-33 Tomizu Tastuyoshi.
// Background space drawing class
void DrawBackSpace(PImage tex1, PImage tex2, PImage tex3) {
  //tex1:top
  topTexture(tex1);

  //tex2:front,back,left,right
  frontTexture(tex2);
  backTexture(tex2);
  leftTexture(tex2);
  rightTexture(tex2);

  //tex3:bottom
  bottomTexture(tex3);
}

// Draw top texture.
void topTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // -Y "top" face
  vertex(-1, -1, -1, 0, 0);//x, y, z, tex_x, tex_y
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1, 1, 1, 1);
  vertex(-1, -1, 1, 0, 1);
  endShape();
}

// Draw front texture.
void frontTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // +Z "front" face
  vertex(-1, -1, 1, 0, 0);//x, y, z, tex_x, tex_y
  vertex( 1, -1, 1, 1, 0);
  vertex( 1, 1, 1, 1, 1);
  vertex(-1, 1, 1, 0, 1);  
  endShape();
}

// Draw back texture.
void backTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // -Z "back" face
  vertex( 1, -1, -1, 0, 0);//x, y, z, tex_x, tex_y
  vertex(-1, -1, -1, 1, 0);
  vertex(-1, 1, -1, 1, 1);
  vertex( 1, 1, -1, 0, 1);
  endShape();
}

// Draw left texture.
void leftTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // -X "left" face
  vertex(-1, -1, -1, 0, 0);//x, y, z, tex_x, tex_y
  vertex(-1, -1, 1, 1, 0);
  vertex(-1, 1, 1, 1, 1);
  vertex(-1, 1, -1, 0, 1);
  endShape();
}

// Draw right texture.
void rightTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // +X "right" face
  vertex( 1, -1, 1, 0, 0);//x, y, z, tex_x, tex_y
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, 1, -1, 1, 1);
  vertex( 1, 1, 1, 0, 1); 
  endShape();
}

// Draw bottom texture.
void bottomTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // +Y "bottom" face
  vertex(-1, 1, 1, 0, 0);//x, y, z, tex_x, tex_y
  vertex( 1, 1, 1, 1, 0);
  vertex( 1, 1, -1, 1, 1);
  vertex(-1, 1, -1, 0, 1);
  endShape();
}

