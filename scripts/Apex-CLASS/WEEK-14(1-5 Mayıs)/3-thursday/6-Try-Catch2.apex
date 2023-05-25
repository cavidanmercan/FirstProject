// Exception handling 
// try-catch

System.debug('My code started'); 
String s ;// = 'hello'; 


try {
    System.debug('inside try block'); 
    System.debug( s.toUpperCase() );   
    // NullPointeException object will be created and assigned to variable in the catch block 
    System.debug('end of try block');

} catch (Exception e) { // e = new NullPointerException()
    // getMessage method of Exception class can be used to get more details about the exception
    System.debug('e.getMessage() value is : ' + e.getMessage());
    System.debug('e.getTypeName() value is : ' + e.getTypeName());
    System.debug('e.getLineNumber() value is : ' + e.getLineNumber());
    System.debug('e.getCause() value is : ' + e.getCause());
    System.debug('e.getStackTraceString() value is : ' + e.getStackTraceString());


    System.debug('inside catch block');
    System.debug('ERROR OCCURED!!!!'); 
}

System.debug('My code Finished'); 