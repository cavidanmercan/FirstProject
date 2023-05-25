 /*List<Integer> shoeSizeList = new List<Integer>{4,7,9,2,7,8,12,1} ; 

 System.debug('Item size is ' +  shoeSizeList.size()   ); 
 for(Integer eachSize : shoeSizeList){
    if(eachSize > 5){ 
        System.debug(eachSize) ; 
    }
 }




 Integer sum = 0 ; 
 for( Integer eachSize  : shoeSizeList ){
     // only add the size to sum if it is greater than 5
     if(eachSize > 5) {
        sum += eachSize ; 
     } 
 }
 System.debug('Sum of sizes greater than 5 :  ' + sum) ; 




 Integer count = 0 ; 
 for(Integer each:shoeSizeList ){
if(each>5){
    count++;
}
 }

 System.debug('count of shoe sizes greater than 5 :  ' + count) ; */


//SET

Set<Integer>targets=new Set<Integer> ();

 targets.add(100); 
 targets.add(100); 
 targets.add(100); 
 targets.add(200); 
 targets.add(200); 
 targets.add(200); 

System.debug(targets) ; 
System.debug('count of item is :  ' + targets.size()) ; 


Set<String> letters = new Set<String>{'A','A','A','B','B','B','C','C','C','D'}; 
System.debug(letters) ; 
System.debug('unique letter count :  ' + letters.size()) ; 


for(String eachLetter   : letters ){
    System.debug(eachLetter); 
}


