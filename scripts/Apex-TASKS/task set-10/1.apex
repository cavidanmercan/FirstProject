/*1. Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
         should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
         should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false  (check out the existing method in String class)
   - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) and print out true | false  (check out the existing method in String class)*/


String message = '  DML          iS reaLly CoOl   ';
System.debug(message.trim()); 
System.debug(message.normalizeSpace()); 

message = message.trim().normalizeSpace();
System.debug('Starts with DML: ' + message.startsWith('DML')) ; 
System.debug('Ends with cool: ' + message.endsWith('cool')) ; 
System.debug('Ends with cool: ' + message.endsWithIgnoreCase('cool')) ; 
