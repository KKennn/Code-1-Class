Ship[] myShips;
Player p;

void setup() {
  size(800, 800);
  p=new Player();
  myShips=new Ship[20];
  for (int i=0; i<20; i++) {
    myShips[i]=new Ship();
  }
}

void draw() {
  background(255);
  p.drawShip();
  p.moveShip();
  for (int i=0; i<20; i++) {
    myShips[i].drawShip();
    myShips[i].moveShip();
    if (dist(myShips[i].xPos, myShips[i].yPos, p.xPos, p.yPos)<=15) myShips[i].c=color(0, 0, 0, 0);
  }
}
