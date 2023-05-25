/*6. Create a String variable with value 
   - print out the length of the String 
   - print out the last character index
   - print out index of second character from the last
   - split the string by empty String to get List of all characters
   - loop through each item and get the count of 'a'
   - now read the doc and try out countMatch method*/




 String sentence = 'Life is beautiful' ;
 
 System.debug((sentence.length())); 
 
 System.debug((sentence.length()-1) ) ; 

 System.debug((sentence.length() -2 ) ) ; 

 System.debug('Split :' + sentence.split('')) ; 

 List <String> list1 = sentence.split('')  ; 
System.debug(list1) ; 
 Integer count = 0 ;

 for( String each : list1) {
    if (each.contains('a')) {
        count++ ;
    }
 } 
System.debug('count of \'a\' ' + count) ; 

//ya da
Integer times = sentence.countMatches('a') ;
System.debug( times ) ; 







