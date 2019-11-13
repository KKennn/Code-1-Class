void setup() {
  size(500, 500);
  background(#FFCECE);
  noStroke();
  drawTwoSticks();
  drawTwoLollipops();
  frameRate(5);
}

void draw() {
  if (mousePressed) {
    background(random(0, 255),random(0, 255),random(0, 255));
    drawTwoSticks();
    drawTwoLollipops();
  }
  randomLollipops();
}

void randomLollipops() {
  float a=random(0, 255);
  float b=random(0, 255);
  float c=random(0, 255);
  float m=random(width*.06, width*.24);
  float n=random(width*.06, width*.24);
  fill(a, b, c);
  ellipse(width*.3, height*.3, m, m);
  fill(b, c, a);
  ellipse(width*.7, height*.3, n, n);
}

void drawTwoSticks(){
  rectMode(CENTER);
  fill(#FFFFFF);
  rect(width*.3, height*.6, width*.02, height*.4);
  rect(width*.7, height*.6, width*.02, height*.4);
}

void drawTwoLollipops(){
  fill(#BF0F0F);
  ellipse(width*.3, height*.3, width*.24, width*.24);
  fill(#6F0FBF);
  ellipse(width*.7, height*.3, width*.24, width*.24);
}
