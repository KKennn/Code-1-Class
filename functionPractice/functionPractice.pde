void setup(){
  println(greeting("Ken"));
  println(ftToCm(5,9));
  saySomething("Ken",5,9);
  if(doIKnowYou("Alice")){
    println("Hi!");
  }
  else{
    println("Sorry but who are you?");
  }
}

void draw(){
  
}

String greeting(String name){
  return "Hello "+name+", nice to meet you.";
}

int ftToCm(int foot, int inch){
  return foot*30+inch*3;
}

void saySomething(String name, int ft, int in){
  println(greeting(name)+" "+"I'm "+ftToCm(ft, in)+" cm tall.");
}

boolean doIKnowYou(String name){
  return name=="John"||name=="Peter";
}
