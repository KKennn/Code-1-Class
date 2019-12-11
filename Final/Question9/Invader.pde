class Invader {
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
  float xPos, yPos;

  Invader(float _xPos, float _yPos) {
    xPos=_xPos;
    yPos=_yPos;
  }

  void display() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (grid [i][j] == 1) {
          fill(0);
        } else {
          fill(255);
        }  
        rect(j*size+xPos, i*size+yPos, size, size);
      }
    }
  }

  void move() {
    float r = random(0, 1);
    if (r <= .25) {
      xPos ++;
    } else if (r > .25&&r<=.5) {
      xPos --;
    } else if (r > .5&&r<=.75) {
      yPos --;
    } else if (r > .75) {
      yPos ++;
    }
  }
}
