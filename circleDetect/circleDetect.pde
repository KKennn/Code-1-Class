void setup(){
  size(500,500);
  background(255);
  noStroke();
}

void draw(){
  fill(toColor(mouseX),toColor(mouseY),0);
  ellipse(width/2,height/2,width/10,height/10);
  if(distance(mouseX,width/2,mouseY,height/2)<25){
    fill(0);
    ellipse(width/2,height/2,width/10,height/10);
    if(mousePressed){
      background(random(0,255),random(0,255),random(0,255));
      ellipse(width/2,height/2,width/10,height/10);
    }
  }
}

float distance(float x1,float x2,float y1,float y2){
  return sqrt(sq((x1-x2))+sq((y1-y2)));
}

int toColor(int n){
  return int(map(n,0,width,50,255));
}
