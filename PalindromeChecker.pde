/*public void setup()
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
  String newWord = "";
  int length = word.length();
  for(int x = 0; x<length; x++){
  if(Character.isLetter(word.charAt(x))==true)
  {
    newWord =newWord + word.charAt(x);
    word = word+word.charAt(x);
  }}
  int length2 = newWord.length();
  for ( int i = length2 - 1; i >= 0; i-- )
  {
    //newWord = newWord.substring(i,i+1);
  }
  println(newWord);
  println(word);
  return false;
}
*/

//for ( int i = length - 1; i >= 0; i-- )
   //      reverse = reverse + original.charAt(i);
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
  int length = word.length();
  String newWord = "";
  String secondWord ="";
  String compareWord = "";
  for (int i = length - 1; i >= 0; i-- )
  {
    newWord =newWord + word.charAt(i);
  }
  for(int x =0; x<newWord.length(); x++)
  {
    if(Character.isLetter(newWord.charAt(x))==true)
    {
      secondWord = secondWord + newWord.charAt(x);  
      secondWord = secondWord.toLowerCase();    
     // println(secondWord);
    }
  }
  for(int y = 0;y<length;y++)
  {
    if(Character.isLetter(word.charAt(y))==true)
    {
      compareWord= compareWord+ word.charAt(y);
      compareWord= compareWord.toLowerCase();
    }
    if(secondWord.equals(compareWord))
    {
      return true;
    }
  }
  return false; 
  }
 



//for ( int i = length - 1; i >= 0; i-- )
   //      reverse = reverse + original.charAt(i);
