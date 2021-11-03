Mover m;   //A Mover and an Attractor
Attractor a;
void setup() {
  size(640,360);
  m = new Mover();
  a = new Attractor();
}
void draw() {
  background(255);
//Apply the attraction force from the Attractor on the Mover.
  PVector force = a.attract(m);
  m.applyForce(force);
  m.update();
  a.display();
  m.display();
}
class Attractor {
  float mass;
  PVector location;
  float G;
  Attractor() {
    location = new PVector(width/2,height/2);
    mass = 20;
    G = 0.4;
  }
  PVector attract(Mover m) {
  PVector force = PVector.sub(location,m.position);
  float distance = force.mag();
  // Remember, we need to constrain the distance so that our circle doesn’t spin out of control.
  distance = constrain(distance,5.0,25.0);
  force.normalize();
  float strength = (G * mass * m.mass) / (distance * distance);
  force.mult(strength);
  return force;
}
void display() {
  stroke(0);
  fill(175,200);
  ellipse(location.x,location.y,mass*2,mass*2);
  }
}
