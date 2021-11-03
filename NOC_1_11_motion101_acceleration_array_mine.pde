// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Demonstration of the basics of motion with vector.
// A "Mover" object stores position, velocity, and acceleration as vectors
// The motion is controlled by affecting the acceleration (in this case towards the mouse)

Mover[] movers = new Mover[5000];

void setup() {
  size(1280,720);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(); 
  }
}

void draw() {
  
  background(0);
  textSize(192);
  fill(0, 102, 153);
  text("ARSLAN", width/5, height/2); 

  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].display(); 
  }
}
