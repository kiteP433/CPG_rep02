//背景空間の描画
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

// 上部テクスチャーを描画
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

// 前部テクスチャーを描画
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

// 後部テクスチャーを描画
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

// 左部テクスチャーを描画
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

// 右部テクスチャーを描画
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

// 下部テクスチャーを描画
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

