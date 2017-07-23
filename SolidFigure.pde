// Computer graphics report2 1516016 3EP4-33 Tomizu Tastuyoshi.
// Draw solid figure class.
public class SolidFigure {

  void drawPillar(float length, float radiusTop, float radiusBottom) {
    float x, y, z;

    pushMatrix();
    // Create Top
    beginShape(TRIANGLE_FAN);
    y = -length / 2;
    vertex(0, y, 0);
    for (int deg = 0; deg <= 360; deg = deg + 10) {
      x = cos(radians(deg)) * radiusTop;
      z = sin(radians(deg)) * radiusTop;
      vertex(x, y, z);
    }
    endShape();

    // Create Bottom
    beginShape(TRIANGLE_FAN);
    y = length / 2;
    vertex(0, y, 0);
    for (int deg = 0; deg <= 360; deg = deg + 10) {
      x = cos(radians(deg)) * radiusBottom;
      z = sin(radians(deg)) * radiusBottom;
      vertex(x, y, z);
    }
    endShape();

    // Create Side
    beginShape(TRIANGLE_STRIP);
    for (int deg =0; deg <= 360; deg = deg + 5) {
      x = cos(radians(deg)) * radiusTop;
      y = -length / 2;
      z = sin(radians(deg)) * radiusTop;
      vertex(x, y, z);
      x = cos(radians(deg)) * radiusBottom;
      y = length / 2;
      z = sin(radians(deg)) * radiusBottom;
      vertex(x, y, z);
    }
    endShape();
    popMatrix();
  }
}

