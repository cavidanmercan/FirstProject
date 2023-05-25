// Exception handling 
// try-catch

System.debug('My code started'); 

//String s ; 
String s = 'hello'; 



try {
    System.debug('inside try block'); 
    System.debug( s.toUpperCase() ); 
    System.debug('end of try block');

} catch (NullPointerException e) {
    
    System.debug('inside catch block');
    System.debug('ERROR OCCURED!!!!'); 
     

}

System.debug('My code Finished'); 