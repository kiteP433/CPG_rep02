// ロボット描画
void DrawRobot(float timer) {

  // ロボットの顔を描写
  pushMatrix();
  DrawFace(timer);
  popMatrix();
  
  // ロボットの顔を描写
  pushMatrix();
  DrawBody();
  popMatrix();

  // ロボットの右腕を描写
  pushMatrix();
  DrawRightHand(timer);
  popMatrix();

  // ロボットの左腕を描写
  pushMatrix();
  DrawLeftHand(timer);
  popMatrix();

  // ロボットの右脚を描写
  pushMatrix();
  DrawRightFoot(timer);
  popMatrix();

  // ロボットの左脚を描写
  pushMatrix();
  DrawLeftFoot(timer);
  popMatrix();

}

