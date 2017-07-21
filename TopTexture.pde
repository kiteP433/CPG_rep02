// 上部テクスチャーを描画
void TopTexture(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // -Y "top" face
  vertex(-1, -1, -1, 0, 0);//x, y, z, tex_x, tex_y
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);
  endShape();
  
}

