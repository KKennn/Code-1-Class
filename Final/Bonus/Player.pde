class Player {
  int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
    {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
    {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
    {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
    {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
    {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
  };
  int rows = 8, cols = 11; 
  int size = 10; 

  Player() {
    xPos=300-size*cols/2;
    yPos=500;
  }

  void display() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (grid [i][j] == 1) {
          fill(255, 0, 0);
          rect(j*size+xPos, i*size+yPos, size, size);
        }
      }
    }
  }

  void move() {
    if (keyPressed) {
      if (keyCode==LEFT&&xPos>0) xPos-=5;
      if (keyCode==RIGHT&&xPos<width-size*cols) xPos+=5;
    }
  }
}
