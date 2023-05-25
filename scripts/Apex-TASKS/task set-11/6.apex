/*6. Write a program that create a Map<String, Integer>  with 9 values
   - Create a new map that contains only the keys and values where the value is greater than 10 from first Map.*/



Map<String, Integer> letterMap = new Map<String, Integer>();
letterMap.put('A', 1);
letterMap.put('B', 3);
letterMap.put('C', 5);
letterMap.put('D', 7);
letterMap.put('E', 9);
letterMap.put('F', 11);
letterMap.put('G', 13);
letterMap.put('H', 15);
letterMap.put('I', 17);

Map<String, Integer> bigValueMap = new Map<String, Integer>();
Set<String> allKeys = letterMap.keySet();
for(String eachKey : allKeys) {
   if (letterMap.get(eachKey) > 10) {
    bigValueMap.put(eachKey, letterMap.get(eachKey));
  } 
}
System.debug(bigValueMap); 


