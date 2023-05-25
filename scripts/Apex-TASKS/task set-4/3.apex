/*3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , add more items into the list and run your program again to see if it works.*/ 

 List<Decimal> prices 
        = new List<Decimal>{0.99,1.99,2.99,3.99,4.99,5.99,6.99,7.99,8.99,9.99};

//    print out the size of the list 
Integer priceSize = prices.size() ; 
System.debug('price count in the list is ' + priceSize ) ; //1. yöntem
System.debug('price count in the list is ' + prices.size() ) ; // 2. yöntem

// print out the sum of all numbers
Decimal sum = 0 ; 

// iterate over the list using for each loop 
for(Decimal  eachPrice :  prices ){

    sum += eachPrice ; 

}

System.debug('Sum of all prices : ' +  sum  ); 

//    print out the average of all numbers 
//   average =  sum / count of items 

Decimal average =  sum / priceSize ; 
System.debug('The average price is ' + average); 


