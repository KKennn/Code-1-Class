class Ship {
  color c;
  float xPos, yPos, xSpeed;
  Ship() {
    c=color(0, random(150, 250), 150);
    xPos=random(width);
    yPos=random(height);
    xSpeed=random(2, 5);
  }
  void drawShip() {
    noStroke();
    fill(c, 200);
    ellipse(xPos, yPos, 50, 40);
    ellipse(xPos, yPos+10, 80, 20);
  }
  void moveShip() {
    xPos+=xSpeed;
    if (xPos>width+50) xPos=-50;
  }
}
