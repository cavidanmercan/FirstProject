/*9. Create a String variable with the value 
   - check if the value is palindrome or not 
   - palindrome read the same from forward or backward 
   - for example anna , hannah , racecar, mom
   - do case-sensitive check! */


String palindrome = 'level';
String reverse = palindrome.reverse() ;

if (palindrome == reverse) {
  System.debug('Palindrome!!!') ;
} else {
  System.debug('Not palindrome') ;
}


