class Enemy {
  public PVector EPos;
  public float MAX_VELOCITY = 0.9;
  public float velocity;
  
  Enemy () {
    EPos = new PVector(100,100);
    velocity = 0.1;
  }
  
  Enemy (float x, float y) {
    EPos = new PVector(x, y);
  }
  
  Enemy (float x, float y, float v) {
    EPos = new PVector(x, y);
    velocity = v;
  }
  
  void setVelocity(float v) {
    
    this.velocity = v;
  }
  
  void drawEnemy() {
    fill(0);
    circle(EPos.x, EPos.y, 100);

  }
  
  void updatePos() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector updatePos = PVector.lerp(EPos ,mouse, min(velocity, MAX_VELOCITY));
    EPos.set(updatePos);
  }
  
  void update() {
    updatePos();
    drawEnemy();
  }
  
  PVector GetPosition () {
    return EPos;
  }
}
