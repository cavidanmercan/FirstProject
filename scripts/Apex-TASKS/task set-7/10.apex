incele discorddan aldım


/*Refer Day 12 Code Extras at the end for this
10.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method */

Set<Integer> set1 = new Set<Integer>{ 34, 12, 66, 90, 1 };
Set<Integer> set2 = new Set<Integer>{ 77, 88, 66, 55, 11 };
Boolean set1ContainsSet2 = set1.containsAll(set2);
System.debug('set1ContainsSet2 value is : ' + set1ContainsSet2);
Boolean set2ContainsSet1 = set2.containsAll(set1);
System.debug('set2ContainsSet1 value is : ' + set2ContainsSet1);

set2.addAll(set1);
System.debug('Set2 value is : ' + set2); 
System.debug(set2.containsAll(set1));
set1.addAll(set2);
System.debug('Set1 value is : ' + set1); 
System.debug(set1.containsAll(set1));

set2.removeAll(set1);
System.debug('set2 value is : ' + set2); 

Set<Integer> set3 = new Set<Integer>{ 34, 12, 66, 90, 1 };
Set<Integer> set4 = new Set<Integer>{ 77, 88, 66, 55, 11 };
set1.retainAll(set4);
System.debug('set3 value is : ' + set3); 