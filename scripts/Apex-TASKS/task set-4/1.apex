/*1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)

// practice List using similar approach */


 Integer sumOfOdd = 0 ;  

 for(Integer i = 1 ; i<=100 ; i +=2 ){

    // System.debug(i) ; 
    sumOfOdd += i ; 

 }
 System.debug('sum Of Odd from 1 to 100 '
                + sumOfOdd) ; 
                



// while loop version of same task 

Integer sumOfOdd1 = 0 ; 

Integer i = 1 ; 

while( i<=100  ){

    sumOfOdd1 += i ; 
    //System.debug(i) ; 
    i += 2 ; 
}
System.debug('Sum of odd1 ' + sumOfOdd1) ; 

// do while
Integer sumOfOdd1 = 0 ; 

Integer i = 1 ; 

do 
{sumOfOdd1+=i; i += 2;}
while (i < 100);
System.debug(sumOfOdd1);





