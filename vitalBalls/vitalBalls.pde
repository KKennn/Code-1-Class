int size,rows,cols;

void setup(){
  size(800,600);
  size=20;
  rows=height/size;
  cols=width/size;
  noStroke();
}

void draw(){
  background(0);
  for(int i=0;i<cols;i++){
    for(int j=0;j<rows;j++){
      float d=dist(mouseX,mouseY,i*size+size/2,height/2);
      float s=map(d,0,width,size,size-10);
      int r=int(map(i,0,10,0,255));
      int b=int(map(j,0,10,0,255));
      fill(r,0,b);
      ellipse(i*size+size/2,j*size+size/2,s,s);
    }
  }
}
