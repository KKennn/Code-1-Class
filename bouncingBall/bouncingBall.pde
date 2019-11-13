float xPos=300, yPos=300;
float xSpeed, ySpeed, xSpeedOriginal, ySpeedOriginal;
float size=100;
float dist;
boolean toggleOn;
boolean mouseIn;
boolean spreading;
int t=30;
float spreadX, spreadY;

void setup() {
  size(600, 600);
  xSpeed=random(-5, 5);
  ySpeed=random(-5, 5);
  noStroke();
}

void draw() {
  frame();
  canvas();
  buttonAndToggle();
  dist=dist(mouseX, mouseY, xPos, yPos);
  print(spreading+" ");
  println(dist);
  mouseIn=mouseDetect();
  moveBall();
  bounce();
  toggle();
}

void mousePressed() {
  if (mouseIn) {
    xSpeed=random(-5, 5);
    ySpeed=random(-5, 5);
  }
  if (dist(mouseX, mouseY, 200, 25)<=25) {
    xSpeed=random(-5, 5);
    ySpeed=random(-5, 5);
    xPos=random(size, width-size);
    yPos=random(size, height-size);
  }
  if (mouseY<50&&mouseX>375&&mouseX<425) {
    toggleOn=!toggleOn;
  }
}

void canvas() {
  fill(255, map(yPos, 0, height, 255, 21), map(yPos, 0, height, 0, 232));
  rect(size/2, size/2, width-size, height-size);
}

void touch(int t, float a, float b) {
  fill(#17C3FF, 100-t);
  ellipse(a, b, t, t);
}

void frame() {
  fill(255, map(yPos, 0, height, 21, 255), map(yPos, 0, height, 232, 0));
  rect(0, 0, width, size/2);
  rect(0, 0, size/2, height);
  rect(0, height-size/2, width, height-size/2);
  rect(width-size/2, 0, size/2, height);
  if (reachEdge()&&!spreading) {
    spreading=true;
    spreadX=xPos;
    spreadY=yPos;
    if (xSpeed>0&&reachXEdge()) spreadX-=size/2;
    if (xSpeed<0&&reachXEdge()) spreadX+=size/2;
    if (ySpeed>0&&reachYEdge()) spreadY-=size/2;
    if (ySpeed<0&&reachYEdge()) spreadY+=size/2;
  }
  if (spreading) {
    touch(t, spreadX, spreadY);
    t+=10;
    if (t>100) {
      spreading=false;
      t=30;
    }
  }
}

boolean reachEdge() {
  return xPos>width-size||xPos<size||yPos>height-size||yPos<size;
}

boolean reachXEdge() {
  return xPos>width-size||xPos<size;
}

boolean reachYEdge() {
  return yPos>height-size||yPos<size;
}

void buttonAndToggle() {
  fill(#17C3FF);
  ellipse(200, size/4, 50, 50);
  rect(375, 0, 50, 50);
}

void bounce() {
  if (reachXEdge()) {
    xSpeed=-xSpeed;
  }
  if (reachYEdge()) {
    ySpeed=-ySpeed;
  }
}

void moveBall() {
  xPos+=xSpeed;
  yPos+=ySpeed;
  fill(map(xPos, 0, width, 75, 255), 0, map(xPos, 0, width, 255, 75));
  ellipse(xPos, yPos, size, size);
}

boolean mouseDetect() {
  return dist<=size/2;
}

void toggle() {
  if (toggleOn&&xSpeed!=0) {
    xSpeedOriginal=xSpeed;
    ySpeedOriginal=ySpeed;
    xSpeed=0;
    ySpeed=0;
  }
  if (!toggleOn&&xSpeed==0) {
    xSpeed=xSpeedOriginal;
    ySpeed=ySpeedOriginal;
  }
}
