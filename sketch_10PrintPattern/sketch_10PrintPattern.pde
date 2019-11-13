void setup(){
  size(600,600);
  background(255);
  fill(0);
}

void draw(){
  for(int i=0;i<height;i+=50){
    for(int j=0;j<width;j+=50){
      if(i%100==0){
        if(j%100==0) triangle(i,j,i,j+50,i+50,j);
        else triangle(i,j,i+50,j,i+50,j+50);
      }
      else{
        if(j%100==0) triangle(i,j,i,j+50,i+50,j+50);
        else triangle(i,j+50,i+50,j+50,i+50,j);
      }
    }
  }
}
