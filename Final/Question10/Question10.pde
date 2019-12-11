//Invader cute=new Invader(200,200);
ArrayList<Invader> cutes=new ArrayList<Invader>();

void setup() {
  size(600, 600); 
  noStroke();
}

void draw() {
  background(255);
  for (int i=0; i<cutes.size(); i++) {
    Invader cute=cutes.get(i);
    cute.display();
    cute.move();
  }
  if(frameCount%60==0) cutes.add(new Invader(random(width),random(height)));
}
