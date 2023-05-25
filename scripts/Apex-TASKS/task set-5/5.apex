/*5. Write a program that create List of Id with 10 items and use 2 different loop (for loop and for each loop )
to print out all value for practice 

    - continue from above
     if the any ID match exactly '001xxxxxxxxxxxxxxx' 
     then break out of the loop */


List<Id> idNo = new List<Id>{
'a008d000009gULBAA1',
'a008d000009gULBAA2',
'a008d000009gULBAA3',
'a008d000009gULBAA4',
'a008d000009gULBAA5', 
'a008d000009gULBAA6',
'a008d000009gULBAA7',
'a008d000009gULBAA8',
'a008d000009gULBAA9',
'a008d000009gULBAA0'
 };

for(Integer i = 0; i < idNo.size(); i++){
     if (idNo.get(i)=='a008d000009gULBAA5'){
          break;
     }
    System.debug(idNo.get(i));
  }

for(Id eachId : idNo) {
     if(eachId=='a008d000009gULBAA5')
        break;
   System.debug(eachId);
} 