/*2. Write a program that store List of long with 10 items with positive and negative numbers
 and print out all positive values using for loop try using the continue instead.
*/

List<Long> numbers = new List<Long>{5900000,-7200000,9000000,-3700000,2200000,-2900000,9200000,-1800000,9100000,-3200000};

 for(Long eachNum : numbers){
    if(eachNum<0){
    continue;
    }System.debug(eachNum);
 }


 