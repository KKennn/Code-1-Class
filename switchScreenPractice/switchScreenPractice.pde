int screen=0;

void setup() {
  size(600, 600);
}

void draw() {
  switch(screen) {
  case 0: 
    startScreen(); 
    break;
  case 1: 
    gameScreen();
    break;
  case 2:
    endScreen();
    break;
  }
}

void mousePressed() {
  if (screen==0&&dist(mouseX, mouseY, width/2, height/2)<=25) screen=1;
  if (screen==1&&dist(mouseX, mouseY, width/2, height/3)<=25) screen=2;
  if (screen==2&&dist(mouseX, mouseY, width/2, height/1.5)<=25) screen=0;
}

void startScreen() {
  background(0);
  textSize(42);
  textAlign(CENTER);
  fill(255);
  text("Welcome", width/2, 100);
  fill(255, 0, 255);
  ellipse(width/2, height/2, 50, 50);
}

void gameScreen() {
  background(255, 0, 0);
  fill(255, 255, 0);
  ellipse(width/2, height/3, 50, 50);
}

void endScreen() {
  background(0);
  textSize(42);
  textAlign(CENTER);
  fill(255);
  text("Game Over", width/2, 100);
  fill(255, 255, 0);
  ellipse(width/2, height/1.5, 50, 50);
}
