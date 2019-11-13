void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(0);
  translate(300, 300);
  rotateY(radians(mouseX));
  rotateX(radians(mouseY));
  noStroke();
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      for (int k=0; k<10; k++) {
        pushMatrix();
        float x= map(i, 0, 10, -800, 800);
        float y=map(j, 0, 10, -800, 800);
        float z=map(k, 0, 10, -800, 800);
        translate(x,y,z);
        float r, g, b;
        r=map(i, 0, 10, 0, 255);
        g=map(j, 0, 10, 0, 255);
        b=map(k, 0, 10, 0, 255);
        fill(r, g, b);
        box(50);
        popMatrix();
      }
    }
  }
}
