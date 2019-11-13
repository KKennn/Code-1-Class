Tree[] myTrees;

void setup(){
  size(1000,1000);
  myTrees=new Tree[3];
  for(int i=0;i<3;i++){
    myTrees[i]=new Tree();
  }
}

void draw(){
  background(#83F2F5);
  for(int i=0;i<3;i++){
    myTrees[i].drawTree();
    myTrees[i].growTree();
    if(myTrees[i].size>height/20){
      for(int j=0;j<3;j++){
        myTrees[j].growspeed=0;
      }
    }
  }
}

void mousePressed(){
  setup();
}
