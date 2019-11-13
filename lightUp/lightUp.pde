void setup(){
  size(1000,1000);
}

void draw(){
  background(0);
  for(int i=0;i<=height;i+=20){
    for(int j=0;j<=width;j+=20){
      fill(map(dist(j,i,mouseX,mouseY),0,500,255,0));
      float size=map(abs(i+j-1000),1000,0,5,20);
      ellipse(j,i,size,size);
    }
  }
}
