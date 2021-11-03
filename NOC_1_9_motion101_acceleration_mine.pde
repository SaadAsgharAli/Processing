// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover mover;

void setup() {
  size(640,360);
  mover = new Mover(); 
}

void draw() {
  background(0);
  mover.update();
  println(mover.velocity);
  mover.checkEdges();
  mover.display(); 
}
