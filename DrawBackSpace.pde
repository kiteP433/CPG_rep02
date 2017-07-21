//背景空間の描画
void DrawBackSpace(PImage tex1, PImage tex2, PImage tex3) {
  fill(255);

  //tex1:top
  TopTexture(tex1);

  //tex2:front,back,left,right
  FrontTexture(tex2);
  BackTexture(tex2);
  LeftTexture(tex2);
  RightTexture(tex2);

  //tex3:bottom
  BottomTexture(tex3);
  
}

