/*4. Write a program that 
   - create two string variables with values
   - print 'Its not anagram!!' they are the same' if they are equal
   - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   - print 'Its not anagram!!'
   - HINT : use containsOnly method twice on each other*/



 String word1 = 'peach';
 String word2 = 'cheap';

 if(word1.containsOnly(word2) && word2.containsOnly(word1)) {
    System.debug('Its anagram!!!'); 
 } else {
    System.debug('Its not anagram!!'); 
 }





