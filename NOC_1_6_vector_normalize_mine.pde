// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Demonstration of normalizing a vector.
// Normalizing a vector sets its length to 1.

void setup() {
  size(640,360);
}

void draw() {
  background(255);
  
    // A vector that points to the mouse position
    PVector mouse = new PVector(mouseX,mouseY);
    // A vector that points to the center of the window
    PVector center = new PVector(width/2,height/2);
    // Subtract center from mouse which results in a vector that points from center to mouse
    mouse.sub(center);
    
    // Normalize the vector
    mouse.normalize();
    
    // Multiply its length by 150
    mouse.mult(150);
  
    translate(width/2,height/2);
    // Draw the resulting vector
    stroke(0);
    strokeWeight(2);
    line(0,0,mouse.x,mouse.y);
    
    fill(0,255,0,200);
    ellipse(0,0,50,50);
    strokeWeight(5);
    point(0,0);
 
}
