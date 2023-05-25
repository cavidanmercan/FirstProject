/*
- A set is an unordered collection of elements that do not contain any duplicates. 
- Set elements can be of any data type—primitive types, collections, sObjects, 
user-defined types, and built-in Apex types.
*/

Set<Integer> mySet = new Set<Integer>();            // Define a new set

mySet.add(1);                                       // Add three elements to the set
mySet.add(3);
mySet.add(1);                                       // Duplicate element
mySet.add(2);                                       
System.debug(mySet);     

System.debug(mySet.size());

mySet.remove(2);                                    // Remove the integer value from the set 
System.debug(mySet);                                //(set de value ti remove yazarken doğrudan adı yada sayısı ne ise o yazılır-indeks olmadığı için )