int size;

void setup(){
  size(800,600);
  size=width/10;
  noStroke();
}

void draw(){
  background(0);
  for(int i=0;i<10;i++){
    float d=dist(mouseX,mouseY,i*size+size/2,height/2);
    float s=map(d,0,width,300,20);
    int r=int(map(i,0,10,0,255));
    fill(r,0,125);
    ellipse(i*size+size/2,height/2,s,s);
  }
}
