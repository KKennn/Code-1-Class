int degree=0;

void setup(){
  size(600,600);
  rectMode(CENTER);
}

void draw(){
  background(255);
  noFill();
  pushMatrix();
    translate(width/2,height/2);
    rotate(radians(degree));
    scale(2);
    degree++;
    rect(0,0,100,100);
  popMatrix();
  pushMatrix();
    
    for(int i=0;i<100;i++){
      translate(width/2, height/2);
      rotate(radians(-degree+i));
      rect(mouseX,mouseY,i*5,i*5);
    }
  popMatrix();
}
