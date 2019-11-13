void setup(){
  size(500,500,P3D);
  background(0);
  noStroke();
}

void draw(){
  for(int i=0;i<10;i++){
    for(int j=0;j<10;j++){
      for(int k=0;k<10;k++){
        pushMatrix();
          float x=map(i,0,10,0,500);
          float y=map(j,0,10,0,500);
          float z=map(k,0,10,0,500);
          translate(x,y,z);
          fill(map(i+j+k,0,30,20,255));
          box(20);
        popMatrix();
      }
    }
  }
}
