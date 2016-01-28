public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}


public boolean palindrome(String word)
{
  //your code here
  String bob=new String();
  String lowerCase=new String(word.toLowerCase());
  String rewrote=new String();

  for(int i=0; i<lowerCase.length(); i++){
    if(i==lowerCase.length()-1 && Character.isLetter(lowerCase.charAt(i)) == true){
      rewrote=rewrote+lowerCase.substring(i);
      break;
    }

    if(Character.isLetter(lowerCase.charAt(i)) == true){
      rewrote=rewrote+lowerCase.substring(i, i+1);
    }
  }

  for(int i=lowerCase.length()-2; i>-1; i--){
    if(i==lowerCase.length()-2 && Character.isLetter(lowerCase.charAt(i+1))==true)
      bob=bob+lowerCase.substring(lowerCase.length()-1);
    if(Character.isLetter(lowerCase.charAt(i)) == true)
      bob=bob+lowerCase.substring(i,i+1);
  }

  if(rewrote.equals(bob))
  return true;

  return false;
}

