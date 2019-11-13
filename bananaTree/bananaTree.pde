void setup() {
  size(500, 500);
  background(#87E8EA);
}

void draw() {
  //trunk:
  fill(#482902);
  rectMode(CENTER);
  rect(250, 400, 60, 200);
  fill(#482902);
  triangle(180,500,330,500,250,100);
  //tree:
  fill(#1A6413);
  ellipse(width/2, height/3, 480, 480);
  //1st banana:
  fill(#FFE136);
  ellipse(100, 100, 80, 80);
  fill(#1A6413);
  ellipse(80, 80, 80, 80);
  fill(#4B2E08);
  rectMode(CENTER);
  rect(120, 60, 50, 20);
  //2nd banana:
  fill(#FFE136);
  ellipse(250, 100, 80, 80);
  fill(#1A6413);
  ellipse(230, 80, 80, 80);
  fill(#4B2E08);
  rectMode(CENTER);
  rect(270, 60, 50, 20);
  //3rd banana:
  fill(#FFE136);
  ellipse(400, 100, 80, 80);
  fill(#1A6413);
  ellipse(380, 80, 80, 80);
  fill(#4B2E08);
  rectMode(CENTER);
  rect(420, 60, 50, 20);
  //4th banana:
  fill(#FFE136);
  ellipse(100, 250, 80, 80);
  fill(#1A6413);
  ellipse(80, 230, 80, 80);
  fill(#4B2E08);
  rectMode(CENTER);
  rect(120, 210, 50, 20);
  //5th banana:
  fill(#FFE136);
  ellipse(250, 250, 80, 80);
  fill(#1A6413);
  ellipse(230, 230, 80, 80);
  fill(#4B2E08);
  rectMode(CENTER);
  rect(270, 210, 50, 20);
  //6th banana:
  fill(#FFE136);
  ellipse(400, 250, 80, 80);
  fill(#1A6413);
  ellipse(380, 230, 80, 80);
  fill(#4B2E08);
  rectMode(CENTER);
  rect(420, 210, 50, 20);
  //impossible oranges:
  fill(#FC8F08);
  ellipse(250, 350, 50, 50);
  ellipse(175, 175, 50, 50);
  ellipse(325, 175, 50, 50);
  ellipse(150, 320, 50, 50);
  ellipse(350, 320, 50, 50);

  noStroke();
}
