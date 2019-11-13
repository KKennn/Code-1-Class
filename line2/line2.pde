int x;
int y;
boolean mouseClicked=false;

void setup() {
  size(500, 500);
  background(0);
  rectMode(CENTER);
}

void draw() {
  if (mousePressed) {
    mouseClicked=true;
    x=mouseX;
    y=mouseX;
  }
  if (mouseClicked) {
    background(0);
    line1(x++,y--);
  }
  if (x<0&&y>width) {
    background(0);
    mouseClicked=false;
  }
}

void line1(int a, int b){
  fill(255);
  rect(a, height/2, random(width/30), height);
  rect(b, height/2, random(width/30), height);
}
