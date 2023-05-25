/*7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30*/

Double[] prices = new Double[10];
        prices [0] = 00.99;
        prices [1] = 10.99;
        prices [2] = 20.99;
        prices [3] = 30.99;
        prices [4] = 40.99;
        prices [5] = 50.99;
        prices [6] = 60.99;
        prices [7] = 70.99;
        prices [8] = 80.99;
        prices [9] = 90.99;

Integer count = 0;
for (Double each : prices ) {
  if (each > 10 && each < 20 || each > 40 && each < 50) {
    count++;
  }
}
System.debug('The count of the number is between 10 and 20 or 40 and 50 : ' + count); 

Double sum  = 0;
for(Double each : prices ) {
    if(each>30){
        sum +=each;
    }
}
System.debug('Sum of the numbers greater than 30 : ' + sum ); 
 
 