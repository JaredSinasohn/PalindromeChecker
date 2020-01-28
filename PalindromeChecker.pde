public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String noCap = new String();
  for(int i = 0; i<word.length(); i++){
      noCap = noCap + word.substring(i,i+1).toLowerCase();
  }
  String noSp = "";
  for(int i = 0; i<noCap.length(); i++){
    if(!(noCap.substring(i, i+1).equals(" "))){
      noSp=noSp + noCap.substring(i, i+1);
    }
  }
  String letters = "";
  for(int i = 0; i<noSp.length(); i++){
    if(Character.isLetter(noSp.charAt(i))){
      letters=letters + noSp.substring(i, i+1);
    }
  }
  if(letters.equals(reverse(letters))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--){
      sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}


