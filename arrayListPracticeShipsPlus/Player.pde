class Player {
  float xPos, yPos; 
  float xSpeed, ySpeed; 
  int size; 
  Player() {
    xPos = width/2; 
    yPos = height/2; 
    size = 250;
  }
  void move() {
    xPos += xSpeed; 
    yPos += ySpeed; 
    if (keyPressed) {
      if (keyCode == UP) ySpeed = -5; 
      else if (keyCode == DOWN) ySpeed = 5; 
      else if (keyCode == LEFT) xSpeed = -5; 
      else if (keyCode == RIGHT) xSpeed = 5;
    } else {
      xSpeed = 0; 
      ySpeed = 0;
    }
  }
  void checkBoundaries() {
    if (xPos > width -20) xPos = width -20;
    if (xPos < 20) xPos = 20;
    if (yPos > height -10) yPos = height -10;
    if (yPos < 20) yPos = 20;
  }
  void drawPlayer() {
    fill(255, 0, 255, 60); 
    ellipse(xPos, yPos, size*2, size); 
    ellipse(xPos, yPos-size/2, size, size);
  }
}
