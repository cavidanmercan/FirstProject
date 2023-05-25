/*1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count*/


List<Integer> numberList = new List<Integer>{10,20,10,40,20,16,10,35,10,54};

Set<Integer> numberSet=new Set<Integer> ();
for (Integer each:numberList){
   numberSet.add(each);
}


System.debug(numberSet);
System.debug(numberSet.size()); 

System.debug(numberList.size()-numberSet.size()); 


//zeynep
List<Integer> list1 = new List<Integer>{10,20,10,40,20,16,10,35,10,54};

Set<Integer> set1 = new Set<Integer>(list1);
System.debug(set1); 

System.debug('Number of unique elements is '+ set1.size());

System.debug('Difference is '+(list1.size()-set1.size())); 






