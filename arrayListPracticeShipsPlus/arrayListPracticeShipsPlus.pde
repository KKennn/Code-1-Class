ArrayList<Ship> myShips = new ArrayList<Ship>(); 
Player myPlayer; 
int score = 0; 

void setup() {
  size(800, 600); 
  myPlayer = new Player(); 
  for (int i =0; i<20; i++) myShips.add(new Ship());
}

void draw() {
  //if(frameCount%30==0)
    myShips.add(new Ship());
  background(255);
  myPlayer.drawPlayer(); 
  myPlayer.move();
  myPlayer.checkBoundaries(); 
  for (int i = 0; i<myShips.size(); i++) {
    Ship s = myShips.get(i);
    s.drawShip(); 
    s.move(); 
    if (dist(myPlayer.xPos, myPlayer.yPos, s.xPos, s.yPos)<250) {
      println("collision detected: " + i); 
      myShips.remove(i);
      score ++;
    }
  }
  textSize(24); 
  text("SCORE:" + score, 25, 25);
}
