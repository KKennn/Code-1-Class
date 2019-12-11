class Shot{
  int sxPos, syPos;
  Shot(){
    sxPos=xPos+55;
    syPos=500;
  }
  void display(){
    rectMode(CENTER);
    fill(255,0,0);
    rect(sxPos, syPos, 5,30);
  }
  void move(){
    syPos-=10;
  }
  int getX(){
    return sxPos;
  }
  int getY(){
    return syPos;
  }
}
