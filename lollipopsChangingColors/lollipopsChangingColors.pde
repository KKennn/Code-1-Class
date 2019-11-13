void setup() {
  size(500, 500);
  background(#FFCECE);
  fill(#FFFFFF);
  noStroke();
  rectMode(CENTER);
  rect(150,300,10,200);
  rect(350,300,10,200);
  fill(#BF0F0F);
  ellipse(150,150,120,120);
  fill(#6F0FBF);
  ellipse(350,150,120,120);
  frameRate(5);
}

void draw() {
  float a=random(0,255);
  float b=random(0,255);
  float c=random(0,255);
  float m=random(30,120);
  float n=random(30,120);
  if(mousePressed){
    background(c,b,a);
    fill(#FFFFFF);
    noStroke();
    rectMode(CENTER);
    rect(150,300,10,200);
    rect(350,300,10,200);
    fill(#BF0F0F);
    ellipse(150,150,120,120);
    fill(#6F0FBF);
    ellipse(350,150,120,120);
  }
  fill(a,b,c);
  ellipse(150,150,m,m);
  fill(b,c,a);
  ellipse(350,150,n,n);
}
