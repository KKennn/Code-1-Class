int number=20;
float[] size=new float[number];
float[] xPos=new float[number];
float[] yPos=new float[number];
float[] xSpeed=new float[number];
float[] ySpeed=new float[number];
float[] opacity=new float[number];
color[] colour=new color[number];
boolean[] moving=new boolean[number];

void setup() {
  size(1000, 1000);
  noStroke();
  for (int i=0; i<number; i++) {
    size[i]=random(50, 100);
    xPos[i]=random(size[1], width-size[i]);
    yPos[i]=random(size[i], height-size[i]);
    for (int j=0; j<i; j++) {
      if ((dist(xPos[i], yPos[i], xPos[j], yPos[j])<=(size[i]/2+size[j]/2))) {
        xPos[i]=random(size[i], width-size[i]);
        yPos[i]=random(size[i], height-size[i]);
        i--;
      }
    }
    xSpeed[i]=random(-5, 5);
    ySpeed[i]=random(-5, 5);
    opacity[i]=random(100, 200);
    colour[i]=color(random(122, 255), 0, 255);
    moving[i]=true;
  }
}

void draw() {
  background(0);
  for (int i=0; i<number; i++) {
    fill(colour[i], opacity[i]);
    if (moving[i]) ellipse(xPos[i]+=xSpeed[i], yPos[i]+=ySpeed[i], size[i], size[i]);
    else ellipse(xPos[i], yPos[i], size[i], size[i]);
    if (xPos[i]>width-size[i]/2||xPos[i]<size[i]/2) xSpeed[i]=-xSpeed[i];
    if (yPos[i]>height-size[i]/2||yPos[i]<size[i]/2) ySpeed[i]=-ySpeed[i];
    //if (dist(mouseX, mouseY, xPos[i], yPos[i])<size[i]/2) opacity[i]=0;
    for (int j=i+1; j<number; j++) {
      if ((dist(xPos[i], yPos[i], xPos[j], yPos[j])<=(size[i]/2+size[j]/2))) {
        xSpeed[i]=-xSpeed[i];
        ySpeed[i]=-ySpeed[i];
        xSpeed[j]=-xSpeed[j];
        ySpeed[j]=-ySpeed[j];
      }
    }
  }
}

void mousePressed() {
  for (int i=0; i<number; i++) if (dist(mouseX, mouseY, xPos[i], yPos[i])<size[i]/2) moving[i]=!moving[i];
}
