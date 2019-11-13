int xPos, yPos;
int size=100;
boolean circleClicked=false;
float d;

void setup(){
  size(600,600);
  xPos=width/2;
  yPos=height/2;
}

void draw(){
  d = dist(mouseX,mouseY,xPos,yPos);
  if(d<size/2){
    fill(0);
  }
  else{
    fill(255);
  }
  if(circleClicked){
    background(0,255,255);
  }
  else{
    background(255,255,0);
  }
  ellipse(xPos,yPos,size,size);
}

void mousePressed(){
  if(d<size/2){
    circleClicked=!circleClicked;
  }
}
