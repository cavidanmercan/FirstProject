 //SET METHODS


 /*Set<Integer> numberSet = new Set<Integer>();

 //add
        numberSet.add(10); 
        numberSet.add(10); 
        numberSet.add(10); 
        numberSet.add(10); 
        numberSet.add(10); 
        numberSet.add(10); 

 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {10}



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


  //2. ders



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
//numberSet value is : {10, 20} */


//list practice

/**
    We can create a List by copying the content of another set or list
 */

/*List<Integer> numberList1 = new List<Integer>{64,55,34,86,31};
System.debug('numberList1 value is : ' + numberList1); 

//// Creating a List by copying everything inside another List
List<Integer> numberList2 = new List<Integer>(numberList1);
System.debug('numberList2 value is : ' + numberList2); 


Set<Integer> numberSet = new Set<Integer>{23,71,44,71,43};
System.debug('numberSet value is : ' + numberSet); 
//// Creating a List by copying everything inside a Set
List<Integer> numberList3 = new List<Integer>(numberSet);
System.debug('numberList3 value is : ' + numberList3); 


// if you already have a list created 
// and if you want to add all the elements from another list 
// for example numberList1 has 5 items , numberList3 has 5 items 
// add everything in numberList1 into numberList3 so it can have 10 items 

numberList3.addAll(numberList1) ; 
System.debug('numberList3 value is : ' + numberList3); 


// addAll method either accept another list or set , to add all the element into this list that calling addAll method

// add all the elements from numberSet into numberList1 ; 
numberList1.addAll(numberSet) ; 
System.debug('numberList1 value is : ' + numberList1); 


//addAll method kendi örneğim
List<Integer> numberList = new List<Integer>{1,1,2,2,3,3};

Set<Integer> numberSet = new Set<Integer>{4,5,6};

List<Integer> numberListTotal = new List<Integer>();

numberListTotal.addAll(numberList);
numberListTotal.addAll(numberSet);

System.debug(numberListTotal); 

Set<Integer> numberSetTotal = new Set<Integer>();

numberSetTotal.addAll(numberList);
numberSetTotal.addAll(numberSet);

System.debug(numberSetTotal); */


//Set  Bulk Methods
//containsAll

Set<Integer> numSet = new Set<Integer>{1,2,3,4,5,6,7,8,9};
 System.debug( numSet); 

 List<Integer> numLstToCheck1 = new List<Integer>{2,4,5};
 Boolean result1 = numSet.containsAll(numLstToCheck1);  
 System.debug(result1);  


 List<Integer> numLstToCheck2 = new List<Integer>{99,4,5};
 Boolean result2 = numSet.containsAll(numLstToCheck2); 
 System.debug(result2);  


 Set<Integer> numSetToCheck1 = new Set<Integer>{2,4,5};
 Boolean result3 = numSet.containsAll(numSetToCheck1);  
 System.debug( result3);  
 

 Set<Integer> numSetToCheck2 = new Set<Integer>{99,4,5};
 Boolean result4 = numSet.containsAll(numSetToCheck2);  
 System.debug( result4); 


 //removeAll
  Set<Integer> numSet = new Set<Integer>{1,2,3,4,5,6,7,8,9};
 System.debug( numSet); 
  
   
   List<Integer> numList1 = new List<Integer>{3,4,11};
   numSet.removeAll(numList1);
   System.debug( numSet); 

   Set<Integer> numSet1 = new Set<Integer>{2,4,5};
   numSet.removeAll(numSet1); 
   System.debug( numSet); 


    // retainAll

      Set<Integer> numSet = new Set<Integer>{1,2,3,4,5,6,7,8,9};
 System.debug( numSet); 
  

    
    List<Integer> numListRetain = new List<Integer>{3,4,11,7,5};
    numSet.retainAll(numListRetain);
    System.debug( numSet); 
   

    Set<Integer> numSetRetain = new Set<Integer>{2,4,5};
    numSet.retainAll(numSetRetain); 
    System.debug( numSet); 
  