/**
Set is a collection of unique elements 
It's a unordered collection meaning there is no index
order is not guaranteed 
 */

 Set<Integer> numberSet = new Set<Integer>();
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 

 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {10}

//methods

// size() 
System.debug('numberSet.size()  value is : ' + numberSet.size() ); 
//OUTPUT : numberSet.size()  value is : 1

// clear()   : delete all items in the Set 
 numberSet.clear(); 
 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {}

// isEmpty()  : return true if size is 0 , return false if not 
System.debug('numberSet.isEmpty() value is : ' + numberSet.isEmpty() ); 
 //OUTPUT : numberSet.isEmpty() value is : true

numberSet.add(10);
numberSet.add(20);
numberSet.add(30);
 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {10, 20, 30}

// contains(valueToCheck)  // return true if item exist , false if not

System.debug('numberSet.contains(10)  value is : ' + numberSet.contains(10) ); //true
System.debug('numberSet.contains(15)  value is : ' + numberSet.contains(15) ); //false
 //OUTPUT : numberSet.contains(10)  value is : true
 //OUTPUT : numberSet.contains(15)  value is : false

// remove(valueToDelete)
 numberSet.remove(30); 
 System.debug('numberSet value is : ' + numberSet); 
  //OUTPUT : numberSet value is : {10, 20}





/**


 */

Set<String> strSet1 = new Set<String>{'item1','item2','item3','item4','item5'};
System.debug('strSet1 value is : ' + strSet1); 
//strSet1 value is : {item1, item2, item3, item4, item5}


// Creating a set by copying everything inside another Set 
Set<String> strSet2 = new Set<String>(strSet1);
System.debug('strSet2 value is : ' + strSet2); 
//strSet2 value is : {item1, item2, item3, item4, item5}



List<Integer> numberList = new List<Integer>{10,10,20,20,20};
System.debug('numberList value is : ' + numberList); 
//numberList value is : (10, 10, 20, 20, 20)

// Creating a set by copying everything inside a List 
Set<Integer> numberSet = new Set<Integer>(numberList);
System.debug('numberSet value is : ' + numberSet); 
//numberSet value is : {10, 20}