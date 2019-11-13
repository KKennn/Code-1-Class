void setup(){
  size(500,500);
  noStroke();
}

void draw(){
  background(0);
  for(float x=0.1;x<=1;x+=0.1){
    for(float y=0.1;y<=1;y+=0.1){
      float ellipseX=lerp(0,width,x);
      float ellipseY=lerp(0,height,y);
      float dist=dist(mouseX,mouseY,ellipseX,ellipseY);
      if(dist<width/7){
        ellipseX+=(ellipseX-mouseX)/5;
        ellipseY+=(ellipseY-mouseY)/5;
      }
      fill(map(dist,0,width,30,140),0,map(dist,0,width,140,255));
      ellipse(ellipseX,ellipseY,35,35);
    }
  }
}
