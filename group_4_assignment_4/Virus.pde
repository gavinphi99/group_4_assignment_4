class Virus {
  float r;
  PVector pos;
  PVector vel;

  color c;
  
  Virus(PVector pos, float r, PVector vel, color c) {
    this.pos = pos;
    this.r = r;
    this.vel = vel;
    this.c = c;
  }
  
void move() {
  pos.add(vel);
  
  if (pos.x < r) {
    pos.x = width - r;
  } else if (pos.x >= width - r) {
    pos.x = r;
  }
  
  if (pos.y < r) {
    pos.y = height - r;
  } else if (pos.y >= height - r) {
    pos.y = r;
  }
}

  //void move() {
  //  pos.add(vel);
    
  //  if (pos.x < r || pos.x >= width - r) {
  //    vel.x *= -1;
  //  }

  //  // Check for collision with top or bottom edge
  //  if (pos.y < r || pos.y >= height - r) {
  //    vel.y *= -1;
  //  }
  //}
  
  void display() {
    ellipseMode(CENTER);
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
}
