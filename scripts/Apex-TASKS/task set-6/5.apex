/*5. Continue from above List of 10 String with some duplicates values
- Print out all indexes of 'Iron Man' in the list 
- Create another List of Integer and Store the all indexes into new List when looping 
- print out the size of new List. */

List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

List<Integer> IronManIndexList = new List<Integer>();

for (Integer index = 0; index < heroList.size() ; index++){
    if (heroList.get(index) == 'Iron Man'){
        System.debug('Index of Iron Man: ' + index);
        IronManIndexList.add(index); 
    }
}

System.debug('Iron Man Index List is: ' + IronManIndexList);
System.debug('Iron Man Index List size is: ' + IronManIndexList.size());
 

