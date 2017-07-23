// Computer graphics report2 1516016 3EP4-33 Tomizu Tastuyoshi.
// Main program.
final int WIDTH  = 1000;
final int HEIGHT = 800;
float rotX = PI/4;
float rotY = PI/4;

// For timer.
float myTimer;
int count;

// Texture for background drawing.
BackSpace backSpace;
PImage backSpaceTex1, backSpaceTex2, backSpaceTex3;

// For robot.
Robot robot;

// For particles.
ParticleSystem particleSystem;
PImage sprite;

void setup() { 
  size(WIDTH, HEIGHT, P3D);

  // Loading particles.
  orientation(LANDSCAPE);
  sprite = loadImage("sprite1.png");
  particleSystem = new ParticleSystem(100);

  // Initialize timer.
  myTimer = 0.0;
  count = 0;

  // Load texture for background drawing.
  backSpace = new BackSpace();
  backSpaceTex1 = loadImage("data/backSpaceTex1.jpg");
  backSpaceTex2 = loadImage("data/backSpaceTex2.jpg");
  backSpaceTex3 = loadImage("data/backSpaceTex3.jpg");

  // Loading robot..
  robot = new Robot();

  textureMode(NORMAL);
  fill(255);
} 

void draw() { 
  background(0);
  lights();
  noStroke();
  translate(width/2.0, height/2.0, -500);
  rotateX(rotX);
  rotateY(rotY);

  // Background drawing.
  pushMatrix();// Background.
  translate(0, -250, 0);
  scale(2000, 1000, 2000);
  backSpace.drawBackSpace(backSpaceTex1, backSpaceTex2, backSpaceTex3);
  popMatrix();// Background.

  // count range is 0～249.
  count = (int)myTimer % 250;

  // Robot drawing.
  pushMatrix();// Robot.
  if (count != 0 && count > 125 && count <= 250) {
  } else {
    rotateY(-0.05*myTimer);
  }
  translate(500, 0, 0);
  robot.drawRobot(myTimer, 0, 330, 0);

  // Particle drawing.
  pushMatrix();// Particle.
  translate(0, 50, 0);
  if (count != 0 && count > 125 && count <= 250) {
    particleSystem.update();
    particleSystem.display();
    particleSystem.setEmitter(0, 200);
  }
  popMatrix();// Particle.
  popMatrix();// Robot.

  // Advance the myTimer by 0.1.
  myTimer = myTimer + 0.1;
}

void mouseDragged() {
  float rate = 0.01;
  rotX += (pmouseY-mouseY) * rate;
  rotY += (mouseX-pmouseX) * rate;
}

