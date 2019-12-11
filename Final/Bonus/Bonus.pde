ArrayList<Invader> cutes=new ArrayList<Invader>();
Player p=new Player();
int xPos, yPos;
ArrayList<Shot> shots=new ArrayList<Shot>();
int score;

void setup() {
  size(600, 600); 
  noStroke();
}

void draw() {
  background(255);
  fill(0, 0, 255);
  textSize(24);
  text("score: "+score, 15, 35);
  for (int i=0; i<cutes.size(); i++) {
    Invader cute=cutes.get(i);
    cute.display();
    cute.move();
    for (int j=0; j<shots.size(); j++) {
      Shot s=shots.get(j);
      float d=dist(cute.getX(), cute.getY(), s.getX(), s.getY());
      println (d);
      if (d<=55&&cutes.size()!=0) {
        cutes.remove(i);
        score++;
      }
    }
  }
  if (frameCount%60==0) cutes.add(new Invader(random(0, width-80), random(height*.6)));
  p.display();
  p.move();
  for (int i=0; i<shots.size(); i++) {
    Shot s=shots.get(i);
    s.display();
    s.move();
    if (s.getY()<=0) shots.remove(i);
  }
  if (frameCount%10==0) shots.add(new Shot());
}
