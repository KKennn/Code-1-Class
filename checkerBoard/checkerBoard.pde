int timer;

void setup(){
  size(800,850);
  noStroke();
  textSize(32);
  textAlign(CENTER);
}

void draw(){
  fill(200);
  rect(0,0,width,50);
  for(int i=0;i<=8;i++){
    for(int j=0;j<=8;j++){
      if((i+j)%2==0)fill(255);
      else fill(0);
      rect(i*100,j*100+50,100,100);
    }
  }
  if(timer%2==0){
    fill(0);
    text("White's turn", width/2, 35);
  }
  else{
    fill(0);
    text("Black's turn", width/2, 35);
  }
}

void mousePressed(){
  timer++;
}
