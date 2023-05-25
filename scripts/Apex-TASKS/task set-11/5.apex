/*5. Create a Map<Integer, String> and fill it up with 5 key-value pairs
   -  Get the sum of All the Keys 
   -  Join all the values by , and print it out 
*/


Map<Integer, String> letterMap = new Map<Integer, String>();
letterMap.put(1, 'A');
letterMap.put(2, 'B');
letterMap.put(3, 'C');
letterMap.put(4, 'D');
letterMap.put(5, 'E');

Set<Integer> allKeys = letterMap.keySet();
Integer sum = 0;
for (Integer eachKey : allKeys) {
  sum += eachKey;
}
System.debug(sum);

List<String> valueList = letterMap.values();
System.debug(String.join(valueList,''));

