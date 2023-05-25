/*3. Create a List of 10 String
   - get the count of String even character count
   - print them out

anagrams words contain the same letters in a different order
for example : late , tale , teal*/



 List <String> colors = new List <String> {'white' , 'black' , 'blue' , 'orange' , 'pink' , 'brown' , 'yellow' , 'green' , 'red' };

 
 Integer count = 0 ;

 for( String each : colors ){
    if(Math.mod(each.length(), 2)==0){
       System.debug(each); 
      count++;
    }
 }
 System.debug(count); 
 

