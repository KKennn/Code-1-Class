void setup() {
  size(500, 500);
  background(#87E8EA);
}

void draw() {
  fill(#482902);
  triangle(width/3,width,width-width/3,width,width/2,height/5);
  fill(#1A6413);
  ellipse(width/2, height/3, width, height);
  drawBanana(width/5,height/5);
  drawBanana(width/2,height/5);
  drawBanana(width-width/5,height/5);
  drawBanana(width/5,height/2);
  drawBanana(width/2,height/2);
  drawBanana(width-width/5,height/2);
  drawOranges();
  noStroke();
}

void drawBanana(int x, int y){
  fill(#FFE136);
  ellipse(x, y, width/6, height/6);
  fill(#1A6413);
  ellipse(x-width/25, y-height/25, width/6, height/6);
  fill(#4B2E08);
  rectMode(CENTER);
  rect(x+width/25, y-height/12, width/10, height/25);
}

void drawOranges(){
  fill(#FC8F08);
  ellipse(width/2, height/1.4, mouseY/8, mouseY/8);
  ellipse(width/2.8, height/2.8, mouseY/8, mouseY/8);
  ellipse(width-width/2.8, height/2.8,  mouseY/8, mouseY/8);
  ellipse(width/3.3, height/1.5,  mouseY/8, mouseY/8);
  ellipse(width-width/3.3, height/1.5, mouseY/8, mouseY/8);
}
