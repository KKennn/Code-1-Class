//Game by ©Ken Chen 2019
//kenchendesigns.com
//Customers illustration, Michael Myers, https://drawsgood.com/persona-4-pixel-characters
//Player illustration, blackzen@huaban, https://huaban.com/pins/466720986/
//Grocery illustration, lovelylatte@Spoonflower, https://www.spoonflower.com/en/products/1218545-super-mini-pixel-foods-by-lovelylatte

int round=0;
int screen=0;
Player p;
Customer c;
Shelves s;
PImage player, b, ca, co, g, m, t, i;
PImage customers[]=new PImage[5];
String grocery[]={"corns", "tomatoes", "grapes", "bananas", "carrots", "milk"};
String g1, g2, g3;
int timer=30;
boolean instruction=true;

void setup() {
  size(1000, 1000);
  imageMode(CENTER);
  noStroke();
  newGame();
}

void draw() {
  switch(screen) {
  case 0: 
    startScreen(); 
    break;
  case 1: 
    gameScreen();
    break;
  case 2:
    endScreen();
    break;
  }
}

void mousePressed() {
  if (screen==0&&mouseX>=90&&mouseX<=431&&mouseY>=806&&mouseY<=914) {
    round=0;
    c=new Customer();
    screen=1;
  }
  if (screen==2&&mouseX>=156&&mouseX<=844&&mouseY>=508&&mouseY<=617) {
    timer=20;
    screen=0;
    round=0;
    c=new Customer();
  }
}

void newGame() {
  p=new Player();
  c=new Customer();
  s=new Shelves();
  g1=grocery[int(random(6))];
  g2=grocery[int(random(6))];
  g3=grocery[int(random(6))];
  while (g1==g2||g2==g3||g3==g1) {
    g1=grocery[int(random(6))];
    g2=grocery[int(random(6))];
    g3=grocery[int(random(6))];
  }
  round++;
}

void startScreen() {
  if (mouseX>=90&&mouseX<=431&&mouseY>=806&&mouseY<=914) image(loadImage("startscreen-hover.png"), 500, 500);
  else image(loadImage("startscreen.png"), 500, 500);
}

void gameScreen() {
  background(#6C4923);
  p.display();
  p.create();
  p.move();
  p.collect();
  c.dialog();
  c.create();
  s.create();
  if (screen==1&&p.win()) endScreen();
  if (screen==1&&p.lose()) screen=2;
  if (instruction) image(loadImage("move.png"), 500, 700);
}

void endScreen() {
  if (p.win()) {
    if (mouseX>=156&&mouseX<=844&&mouseY>=508&&mouseY<=617) image(loadImage("win-hover.png"), 500, 500);
    else image(loadImage("win.png"), 500, 500);
    timer=1;
    if (mousePressed&&mouseX>=156&&mouseX<=844&&mouseY>=508&&mouseY<=617) newGame();
  }
  if (p.lose()) {
    if (mouseX>=156&&mouseX<=844&&mouseY>=508&&mouseY<=617) image(loadImage("lose-hover.png"), 500, 500);
    else image(loadImage("lose.png"), 500, 500);
  }
}

class Customer {
  int time=32-round*5+millis()/1000;
  Customer() {
    for (int i=0; i<5; i++) customers[i]=loadImage("customer "+(i+1)+".png");
  }
  void create() {
    image(customers[round%5], 100, 100);
    timer=(time-millis()/1000);
  }
  void dialog() {
    fill(#E5AA6B);
    rect(-1, -1, width, 200);
    fill(0);
    textSize(24);
    textAlign(LEFT);
    text("Can I have some "+g1+", "+g2+", and "+g3+" in "+timer+" seconds?", 200, 50);
  }
}

class Player {
  float xPos, yPos;
  boolean corns, tomatoes, grapes, bananas, milk, carrots, coever, tever, gever, bever, mever, caever;
  String sentence;
  int itemNum;
  Player() {
    sentence="Now you have nothing";
    player=loadImage("player.png");
    xPos=width/2;
    yPos=width/2;
  }
  void create() {
    image(player, xPos, yPos);
  }
  void move() {
    if (keyPressed) {
      instruction=false;
      if (keyCode==UP&&yPos>280) yPos-=5+round*1.5;
      if (keyCode==DOWN&&yPos<910) yPos+=5+round*1.5;
      if (keyCode==LEFT&&xPos>80) xPos-=5+round*1.5;
      if (keyCode==RIGHT&&xPos<920) xPos+=5+round*1.5;
    }
  }
  void collect() {
    if (xPos>=70&&xPos<=110&&yPos>=250&&yPos<=550) corns=true;
    if (xPos>=70&&xPos<=110&&yPos>=650&&yPos<=950) tomatoes=true;
    if (yPos>=880&&yPos<=920&&xPos>=150&&xPos<=450) grapes=true;
    if (yPos>=880&&yPos<=920&&xPos>=550&&xPos<=850) bananas=true;
    if (xPos>=890&&xPos<=930&&yPos>=250&&yPos<=550) carrots=true;
    if (xPos>=890&&xPos<=930&&yPos>=650&&yPos<=950) milk=true;
  }
  void display() {
    if (checkItem(corns, coever, "corns")) coever=true;
    if (checkItem(carrots, caever, "carrots")) caever=true;
    if (checkItem(grapes, gever, "grapes")) gever=true;
    if (checkItem(tomatoes, tever, "tomatoes")) tever=true;
    if (checkItem(milk, mever, "milk")) mever=true;
    if (checkItem(bananas, bever, "bananas")) bever=true;
    fill(255);
    textAlign(CENTER);
    textSize(24);
    text(sentence+".", 500, 600);
  }
  boolean checkItem(boolean thisItem, boolean thisItemEver, String thisItemName) {
    if (thisItem==true&&thisItemEver==false) {
      itemNum++;
      if (sentence.indexOf("nothing")>0) sentence=sentence.substring(0, sentence.indexOf("nothing"));
      if (itemNum==1) sentence+=thisItemName;
      if (itemNum>1) sentence+=", "+thisItemName;
      thisItemEver=true;
    }
    return thisItemEver;
  }
  boolean win() {
    return sentence.indexOf(g1)>0&&sentence.indexOf(g2)>0&&sentence.indexOf(g3)>0;
  }
  boolean lose() {
    return timer<=0;
  }
}

class Shelves {
  Shelves() {
    b=loadImage("banana.png");
    ca=loadImage("carrot.png");
    co=loadImage("corn.png");
    g=loadImage("grape.png");
    m=loadImage("milk.png");
    t=loadImage("tomato.png");
  }
  void create() {
    fill(#391E01);
    rect(0, 250, 50, 300);
    placeItems(co, 25, 250, "vertical");
    rect(0, 650, 50, 300);
    placeItems(t, 25, 650, "vertical");
    rect(150, 950, 300, 50);
    placeItems(g, 150, 975, "horizontal");
    rect(550, 950, 300, 50);
    placeItems(b, 550, 975, "horizontal");
    rect(950, 250, 50, 300);
    placeItems(ca, 975, 250, "vertical");
    rect(950, 650, 50, 300);
    placeItems(m, 975, 650, "vertical");
  }
  void placeItems(PImage img, int x, int y, String direction) {
    if (direction=="vertical") for (int i=50; i<=250; i+=50) image(img, x, y+i);
    if (direction=="horizontal") for (int i=50; i<=250; i+=50) image(img, x+i, y);
  }
}
