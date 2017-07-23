// Computer graphics report2 1516016 3EP4-33 Tomizu Tastuyoshi.
// For particle class.
public class Particle {
  PVector velocity;
  float lifeSpan = 255;

  PShape part;
  float partSize;

  PVector gravity = new PVector(0, 0.1);

  Particle() {
    partSize = random(50, 160);

    part = createShape();
    part.beginShape(QUAD);
    part.noStroke();
    part.texture(sprite);
    part.normal(0, 0, 1);
    part.vertex(-partSize/2, -partSize/2, 0, 0);
    part.vertex(+partSize/2, -partSize/2, sprite.width, 0);
    part.vertex(+partSize/2, +partSize/2, sprite.width, sprite.height);
    part.vertex(-partSize/2, +partSize/2, 0, sprite.height);
    part.endShape();

    rebirth(width/2, height/2);
    lifeSpan = random(255);
  }

  PShape getShape() {
    return part;
  }

  void rebirth(float x, float y) {
    float a = random(TWO_PI);
    float speed = random(0.5, 4);
    velocity = new PVector(cos(a), sin(a));
    velocity.mult(speed);
    lifeSpan = 255;   
    part.resetMatrix();
    part.translate(x, y);
  }

  boolean isDead() {
    if (lifeSpan < 0) {
      return true;
    } else {
      return false;
    }
  }

  public void update() {
    lifeSpan = lifeSpan - 1;
    velocity.add(gravity);
    part.setTint(color(255, lifeSpan));
    part.translate(velocity.x, velocity.y);
  }
}

