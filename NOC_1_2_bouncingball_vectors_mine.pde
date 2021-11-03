// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Example 1-2: Bouncing Ball, with PVector!
PVector position;
PVector velocity;

void setup() {
  size(200,200);
  background(0);
  position = new PVector(100,100);
  velocity = new PVector(5,10);
}

void draw() {
  noStroke();
  fill(0,20);
  rect(0,0,width,height);
  
  // Add the current speed to the position.
  position.add(velocity);

  if ((position.x > width) || (position.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((position.y > height) || (position.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  // Display circle at x position
  stroke(0);
  fill(0,255,0);
  ellipse(position.x,position.y,16,16);
}
