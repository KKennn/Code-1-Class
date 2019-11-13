class Tree {
  float size;
  float growspeed;
  float xPos, yPos;
  color shade;
  Tree() {
    size=random(5, 10);
    growspeed=random(.1, .5);
    shade=color(random(16, 47), random(67, 193), 0);
    xPos=random(size*10,width-size/10);
    yPos=height;
  }
  void drawTree() {
    noStroke();
    fill(#713700);
    rectMode(CENTER);
    rect(xPos,yPos,size*2,size*20);
    fill(shade);
    triangle(xPos, yPos-size*20,xPos-size*5,yPos-size*10,xPos+size*5,yPos-size*10);
  }
  void growTree(){
    size+=growspeed;
  }
}
