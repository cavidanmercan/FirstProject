/*4. Given below Map 
   
   Map<Integer, String> romanNumerals = new Map<Integer, String>{
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V'
    };

    - Create a new Map<String, Integer> 
      - store the key into the value of above Map
      - store the value into the key of above map */


Map<Integer, String> romanNumerals = new Map<Integer, String>{
  1 => 'I',
  2 => 'II',
  3 => 'III',
  4 => 'IV',
  5 => 'V'
};

Set<Integer> allKeys = romanNumerals.keySet();

Map<String, Integer> romanNumeralsMap = new Map<String, Integer>();

for(Integer eachKey : allKeys) {
 romanNumeralsMap.put(romanNumerals.get(eachKey), eachKey  );
}
System.debug(romanNumeralsMap); 


