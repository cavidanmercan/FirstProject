/*2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out*/



List <String> colors = new List <String> {'white' , 'black' , 'blue' , ' orange' , 'pink' , 'brown' , 'yellow' , 'green' , 'red' };

Integer count = 0;
for (String each : colors) {
  if (each.length() > 5) {
    count++;
  }
}
System.debug(count);


