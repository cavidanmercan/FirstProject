/*1. Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print "end with what we started" 
   else print "different beginning and ending "
    HINT : No Loop Needed Here*/



List<Double> numbers = new List<Double>{59.34,72.98,90.34,37.73,22.44,29.40,92.50,18.98,91.79,32.00};

Double itemFirst = numbers.get(0); 
System.debug('First item value :' + itemFirst); 

Double itemLast = numbers.get(numbers.size()-1); 
System.debug('Last item value :' + itemLast); 

if (itemFirst==itemLast){
System.debug('End with what we started'); 
}
else{
System.debug('Different beginning and ending'); 
}



