// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover[] movers = new Mover[5];

void setup() {
  size(640,360);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.1,100),-50,0); 
  }
}

void draw() {
  background(255);
  //ellipse(0,0,16,16);
  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(1,0);
    PVector gravity = new PVector(0,3);
    
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }

}
