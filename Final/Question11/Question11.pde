int size = 50; 
float xPos = size/2, yPos; 
int xDirection = 1; 
float theta; 
float ampl;

void setup() {
  size(800, 600);
}
void draw() {
  background(0); 
  theta += .05; 
  //create boundaries for your xPos 
  xPos += xDirection; 
  if(xPos>=width||xPos<=0) xDirection=-xDirection;
  //use the map function for ampl 
  ampl=map(xPos, 0, width, 0, height/2);
  //fix yPos 
  yPos = sin(theta)*ampl+height/2; 
  fill(255); 
  ellipse(xPos, yPos, size, size);
}
