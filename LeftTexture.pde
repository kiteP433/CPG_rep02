// 左部テクスチャーを描画
void LeftTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // -X "left" face
  vertex(-1, -1, -1, 0, 0);//x, y, z, tex_x, tex_y
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);
  endShape();
  
}

