int counter;
String originalSentence="the rain in spain is mainly on the plain ";
int index;
int lastIndex;
String[] sentence;
String[] newSentence;

void setup(){
  for(int i=0;i<originalSentence.length();i++){
    if (originalSentence.charAt(i)==' '){
      lastIndex=index;
      index=i;
      //newSentence=append(sentence, originalSentence.substring(lastIndex, index));
      if(lastIndex!=0)
      println(originalSentence.substring(lastIndex+1, index));
      else
      println(originalSentence.substring(lastIndex, index));
    }
  }
  //for(int i=0;i<sentence.length;i++){
  //  print(sentence[i]);
  //}
  //for(int i=0;i<sentence.length;i++){
  //  if (sentence[i]=="the") counter++;
  //}
  //println(counter);
}
