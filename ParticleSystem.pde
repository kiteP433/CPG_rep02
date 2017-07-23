class ParticleSystem {
  ArrayList<Particle> particles;
  PShape particleShape;

  ParticleSystem(int n) {
    particles = new ArrayList<Particle>();
    particleShape = createShape(PShape.GROUP);

    for (int i = 0; i < n; i++) {
      Particle particle = new Particle();
      particles.add(particle);
      particleShape.addChild(particle.getShape());
    }
  }

  void update() {
    for (Particle particle : particles) {
      particle.update();
    }
  }

  void setEmitter(float x, float y) {
    for (Particle particle : particles) {
      if (particle.isDead()) {
        particle.rebirth(x, y);
      }
    }
  }

  void display() {
    shape(particleShape);
  }
}

