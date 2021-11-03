// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  // The Mover tracks position, velocity, and acceleration 
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector s;
  // The Mover's maximum speed
  float topspeed;

  Mover() {
    // Start in the center
    position = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    topspeed = 5;
    s = new PVector(0,0);
  }

  void update() {
    
    // Compute a vector that points from position to mouse
    PVector mouse = new PVector(mouseX,mouseY);
    PVector acceleration = PVector.sub(mouse,position);
    PVector s = PVector.sub(mouse,position);
                                              // my observation: setMag and limit have difference in the output,
                                              // but I can't find the difference internally.
    s.limit(0.2);                           // line by me
    print("acc before:", acceleration);    // line by me    
    print("acc after using limit:", s);
    // Set magnitude of acceleration
    acceleration.setMag(0.2);
    println("acc after:", acceleration);
    
    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // position changes by velocity
    position.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x,position.y,48,48);
  }

}
