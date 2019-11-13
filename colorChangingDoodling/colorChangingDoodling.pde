int brushSize; 
color brushColor = color(0, 0, 0);

void setup() {
  size(1000, 1000); 
  background(255); 
  brushSize = 10;
}

void draw() {
  fill(255, 2); 
  rect(0, 0, width, height); 
  showText();
  showColorChoice();
  if (mousePressed && mouseY>=width/7+50) {
    fill(brushColor); 
    noStroke(); 
    ellipse(mouseX, mouseY, brushSize, brushSize);
  }
  if (keyPressed) {
  }
  changeColor();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && brushSize <= 500) {
      brushSize += 10;
    } else if (keyCode == DOWN && brushSize >10) {
      brushSize -= 10;
    }
  }
}

void showText() {
  textSize(32);
  textAlign(CENTER);
  fill(0);
  text("Choose your color", width/2, 35);
}

void showColorChoice() {
  noStroke();
  fill(#D31717);
  rect(0, 50, width/7, width/7);
  fill(#FF9305);
  rect(width/7, 50, width/7, width/7);
  fill(#F7F716);
  rect(width/7*2, 50, width/7, width/7);
  fill(#2DD322);
  rect(width/7*3, 50, width/7, width/7);
  fill(#2FF0F5);
  rect(width/7*4, 50, width/7, width/7);
  fill(#0549FF);
  rect(width/7*5, 50, width/7, width/7);
  fill(#6C05FF);
  rect(width/7*6, 50, width/7, width/7);
}

void changeColor(){
  if(mousePressed && mouseX<width/7 && mouseY>50 && mouseY<50+width/7){
  brushColor=color(#D31717);
  }
  if(mousePressed && mouseX>width/7 && mouseX<width/7*2 && mouseY>50 && mouseY<50+width/7){
  brushColor=color(#FF9305);
  }
  if(mousePressed && mouseX>width/7*2 && mouseX<width/7*3 && mouseY>50 && mouseY<50+width/7){
  brushColor=color(#F7F716);
  }
  if(mousePressed && mouseX>width/7*3 && mouseX<width/7*4 && mouseY>50 && mouseY<50+width/7){
  brushColor=color(#2DD322);
  }
  if(mousePressed && mouseX>width/7*4 && mouseX<width/7*5 && mouseY>50 && mouseY<50+width/7){
  brushColor=color(#2FF0F5);
  }
  if(mousePressed && mouseX>width/7*5 && mouseX<width/7*6 && mouseY>50 && mouseY<50+width/7){
  brushColor=color(#0549FF);
  }
  if(mousePressed && mouseX>width/7*6 && mouseY>50 && mouseY<50+width/7){
  brushColor=color(#6C05FF);
  }
}
