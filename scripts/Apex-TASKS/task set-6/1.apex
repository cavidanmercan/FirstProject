/*1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 - print them out using both for loop or for each loop*/

List<String> colors = new List<String>();
    colors.add('White');
    colors.add('Black');
    colors.add('Orange');
    colors.add(1, 'Pink');
    colors.add(1, 'Red');
    colors.add(1, 'Green');

for(Integer i=0; i<colors.size(); i++) {
  System.debug('Colors : ' +  colors.get(i) ); 
} 

for(String each: colors) {
  System.debug('Colors : ' +  each ); 
}
 



 