String[] words;
int[] randomNumbers=new int[100];

void setup(){
  size(1000,1000);
  background(255);
  words=new String[3];
  words[0]="Hello, ";
  words[1]="how are you";
  words[2]="?";
  for(int i=0;i<3;i++){
    print(words[i]);
  }
  println();
  for(int i=0;i<randomNumbers.length;i++){
    randomNumbers[i]=int(random(100));
    println("Number "+(i+1)+" is "+randomNumbers[i]);
  }
}

void draw(){
  for(int i=0;i<randomNumbers.length-1;i++){
    rect(randomNumbers[i],randomNumbers[i+1],randomNumbers[i],randomNumbers[i]);
  }
}
