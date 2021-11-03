// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Liquid class 
class Liquid {


  // Liquid is a rectangle
  float x, y, w, h;
  // Coefficient of drag
  float c;

  Liquid(float x_, float y_, float w_, float h_, float c_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    c = c_;
  }

  // Is the Mover in the Liquid?
  boolean contains(Mover m) {
    PVector l = m.position;
    return l.x > x && l.y > y;     // simplified by me
  }

  // Calculate drag force
  PVector drag(Mover m) {
    // Magnitude is coefficient * speed squared
    float speed = m.velocity.mag();
    //print(speed);
    float dragMagnitude = c * speed * speed;

    // Direction is inverse of velocity
    PVector dragForce = m.velocity.get();  // my obs.: this dragForce is a vector of 3 elements out of which
                                           // only the second element has some value other than 0.
    dragForce.mult(-1);
    //println(dragForce);   

    // Scale according to magnitude
     dragForce.setMag(dragMagnitude);      // changed: you can uncomment this line and comment 2 lines underneath it.
    //dragForce.normalize();
    //dragForce.mult(dragMagnitude);
    return dragForce;
  }

  void display() {
    noStroke();
    fill(50);
    rect(x, y, w, h);
  }
}
