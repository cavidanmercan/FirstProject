/**task-1
Create a List of String with 5 items 
Create a Map to store 
   each word(as key) and character Count of that word(as value) as key value pair
   Fill up the Map with 5 key-value pair with above criteria */


List<String> strList = new List<String>{
  'Happy',
  'Sunny',
  'Pleasant',
  'Breakfast',
  'flower'
};

Map<String, Integer> happyMap = new Map<String, Integer>();
// happyMap.put( 'Happy'   ,   5 ); 
happyMap.put( strList[0]   ,   strList[0].length() );
// happyMap.put( 'Sunny'   ,   5 ); 
happyMap.put( strList[1]   ,   strList[1].length() );
// happyMap.put( 'Pleasant'   ,8 ); 
happyMap.put( strList[2]   ,   strList[2].length() );
// happyMap.put( 'Breakfast' , 9   ); 
happyMap.put( strList[3]   ,   strList[3].length() );
// happyMap.put( 'flower'  ,   6 ); 
happyMap.put( strList[4]   ,   strList[4].length() );

System.debug('happyMap value is : ' + happyMap); 
//happyMap value is : {Breakfast=9, Happy=5, Pleasant=8, Sunny=5, flower=6}
 


//discord
//Quick warm up task 

for (String each : strList) {
    happyMap.put(each, each.length());
}

System.debug(happyMap);


/**task-2

/**
Create a List of String with 5 items 
Create a Map to store 
   the word as key -- the frequency of that word as value 
   // Happy 3
   // Sunny 3
   // Pleasant 1
   // Breakfast 1
   // flower 3*/


List<String> list1 = new List<String>{
  'Happy',
  'Sunny',
  'Pleasant',
  'Breakfast',
  'flower',
  'flower',
  'flower',
  'Sunny',
  'Sunny',
  'Happy',
  'Happy'
};


Map<String,Integer> frequencyMap = new Map<String,Integer> (); 

// Loop through each and every item in the list 
for(String eachWord : list1) {
  
    // check if this map already contains the str 
    // if not add this into the map 
    if( !frequencyMap.containsKey(eachWord)   ){
        frequencyMap.put(eachWord, 1); 
    }else{
      // if this word already exists in the map as key 
      // then get the value of that key , increment by one 
      Integer currentCount = frequencyMap.get(eachWord); 
      // now increment the current count by one and update the value of the key
      frequencyMap.put(eachWord, ++currentCount  );
    }
}

System.debug('frequencyMap value is : ' + frequencyMap); 

//discord
 for(String eachWord : list1) {
    
    if(!frequencyMap.containsKey(eachWord)){
        frequencyMap.put(eachWord,1);
    }
    else{
        frequencyMap.put(eachWord, frequencyMap.get(eachWord) + 1) ;
    }
 }
 System.debug('frequencyMap value is : ' + frequencyMap); 