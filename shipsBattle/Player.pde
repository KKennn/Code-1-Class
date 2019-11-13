class Player {
  float xPos, yPos, xSpeed, ySpeed;
  Player() {
    xPos=width/2;
    yPos=height/2;
  }
  void drawShip() {
    noStroke();
    fill(255, 0, 0);
    ellipse(xPos, yPos, 50, 40);
    ellipse(xPos, yPos+10, 80, 20);
  }
  void moveShip() {
    if (keyPressed) {
      if (keyCode == UP) yPos-=5;
      else if (keyCode == DOWN) yPos+=5;
      else if (keyCode==LEFT) xPos-=5;
      else if (keyCode==RIGHT) xPos+=5;
    }
    if(xPos<0) xPos=width;
    if(xPos>width) xPos=0;
    if(yPos<0) yPos=0;
    if(yPos>height) yPos=height;
  }
}
