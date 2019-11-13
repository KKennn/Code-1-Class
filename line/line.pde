int x;
int y;
int m;
int n;
boolean mouseClicked=false;

void setup() {
  size(500, 500);
  background(0);
  rectMode(CENTER);
}

void draw() {
  if (mousePressed&&!mouseClicked) {
    mouseClicked=true;
    x=mouseX;
    y=mouseX;
    m=mouseY;
    n=mouseY;
  }
  if (mouseClicked) {
    background(0);
    x-=1;
    y+=1;
    m-=1;
    n+=1;
    line1();
    //line2();
  }
  if (x<0&&y>width&&m<0&&n>height) {
    background(0);
    mouseClicked=false;
  }
}

void line1() {
  fill(255);
  rect(x, height/2, random(width/30), height);
  rect(x-random(20, 40), height/2, random(width/30), height);
  rect(x-random(40, 60), height/2, random(width/30), height);
  rect(y, height/2, random(width/30), height);
  rect(y+random(20, 40), height/2, random(width/30), height);
  rect(y+random(40, 60), height/2, random(width/30), height);
}

void line2() {
  fill(255);
  rect(width/2, m, random(height/30), width);
  rect(width/2, m-random(20, 40), random(height/30), width);
  rect(width/2, m-random(40, 60), random(height/30), width);
  rect(width/2, n, random(height/30), height);
  rect(width/2, n+random(20, 40), random(height/30), width);
  rect(width/2, n+random(40, 60), random(height/30), width);
}
