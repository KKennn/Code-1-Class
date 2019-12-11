Invader cute=new Invader(200,200);

void setup() {
  size(600, 600); 
  noStroke();
}

void draw() {
  background(255);
  cute.display();
  cute.move();
}
