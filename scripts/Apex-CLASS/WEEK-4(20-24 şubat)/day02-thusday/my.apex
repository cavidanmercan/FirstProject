/*

//MOD

Integer num1 = 10 ;
Integer num2 = 3 ;

Integer result =  num1 / num2 ; 
System.debug('result value is : ' + result); 

// Math.mod(num1 , num2 ) ===>> remainder of the division 
Integer remainder  =   Math.mod(num1, num2)    ;
System.debug(remainder); 


Integer score = 48 ;

// store the result of checking the number is even or odd into a Boolean variable 
Boolean isEven =  Math.mod(score , 2) == 0 ; 
System.debug('isEven value is : ' + isEven); 

// print odd number if score is odd , and print even number if its even 
if( isEven ){
    System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}


if( Math.mod(score,2)==0 ){
   System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}

//MAX

System.debug('which number is bigger : '   +  Math.max(111, 99)  ); 


//MIN
 
System.debug('which number is smaller : '   +  Math.min(111, 99)  ); 




//RANDOM
Double randomDbl =  Math.random() ; 
System.debug('randomDbl value is : ' + randomDbl); 

System.debug('randomDbl value is : ' + randomDbl * 100    ); 


// Math.random() ==> 
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.

Double randomDbl =  Math.random() * 100  ; 
System.debug('randomDbl value is : ' + randomDbl); 
// System.debug('randomDbl value is : ' + randomDbl * 100    ); 

Integer randomInteger =   randomDbl.intValue() ; 
System.debug('randomInteger value is : ' + randomInteger); 



Double price = 15.5 ;
Integer priceWholeNumber =  price.intValue();  // 15
System.debug('priceWholeNumber value is : ' + priceWholeNumber); 

*/
//LENGTH

String message = 'Hello World' ; 
System.debug(message.length()); 


//IS EMPTY
System.debug(String.isEmpty(message)); 

String msg1 = '    ' ; 
System.debug('String.isEmpty(msg1) value is : ' + String.isEmpty(msg1)  ); 

System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1)  ); 



// toUpperCase()   return the UPPERCASE version of the text 
System.debug('message.toUpperCase() value is : ' + message.toUpperCase() ); 


// toLowerCase()   return the lowercase version of the text 
System.debug('message.toLowerCase() value is : ' + message.toLowerCase() ); 

String season = 'summer' ; 

switch on season.toUpperCase()  {

    when 'SPRING' {
        System.debug('value Spring match');
    }
    when 'SUMMER' {
        System.debug('value Summer match');
    }
    when 'FALL' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}


/**

String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World' ; 
System.debug('message value is : ' + message); 
//--------------Checking for String contains some substring 
/**
contains(substring)
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_contains

Example :   
'abcd' contains 'ab'  true  
'abcd' contains 'ac'  false   
 */

 System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') ); 
 System.debug('message.contains(\'hello\')  value is : ' + message.contains('hello') ); 
 System.debug('message.contains(\'Jon\')  value is : ' + message.contains('Jon') ); 

/**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello') ); 
/**
containsNone(inputString)
Returns true if the current String doesn’t contain any of the characters in the specified String; otherwise, returns false.
 */
System.debug('message.containsNone(\'Hlo\') value is : ' 
                                + message.containsNone('Hlo')   ); 

System.debug('message.containsNone(\'AB\') value is : ' 
                                + message.containsNone('AB')   ); 

System.debug('message.containsNone(\'LO\') value is : ' 
                                + message.containsNone('LO')   ); 

System.debug('message has no Number : ' + message.containsNone('0123456789')   ) ; 


System.debug('------------------');
/**
containsOnly(inputString)
Returns true if the current String contains characters only from the specified sequence of characters and not any other characters; otherwise, returns false.
 */
// Hello world is made of these characters  : Helo Wrd 

System.debug('message.containsOnly(\'Helowrd \') value is : ' 
                                    + message.containsOnly('HeloWrd ')); 

System.debug('message.containsOnly(\'He\') value is : ' + message.containsOnly('He')); 

System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); 




String text = 'aaaaoooeee'; 
System.debug('text variable value is : ' + text); 
// check if this text only contains vowel : a e o u i 
System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')  ); 



System.debug('is message == hello world ' +    ( message=='hello world' )       ); 



System.debug('-----------Equality--------------'); 
System.debug('is message == Hello World ' +   (message =='Hello World')); // true
System.debug('is message == hello world ' +   (message =='hello world')); // true

// equals (anotherString) method for checking equality in case sensitive manner



/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 



System.debug('------Equality------------');
System.debug('is message == Hello World ' +    ( message=='Hello World' )       ); //true
System.debug('is message == hello world ' +    ( message=='hello world' )       ); //true

// equals(anotherString) method for checking equality in case sensitive manner

System.debug('message.equals(\'Hello World\') value is : ' 
                                    + message.equals('Hello World')); 

System.debug('message.equals(\'hello world\') value is : ' 
                                    + message.equals('hello world')); 

/**
equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, ignoring case.
This is literally the method version of == 
 */
System.debug('message.equalsIgnoreCase(\'hello world\') : ' 
                            + message.equalsIgnoreCase('hello world') ); 


/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 

String str = 'abcabc';
/**
remove(substring)
Removes all occurrences of the specified substring and returns the String result.
 */ 
 System.debug('str.remove(\'a\') value is : ' + str.remove('a') ); 
 str = str.remove('a'); 
 System.debug('str value is : ' + str); 