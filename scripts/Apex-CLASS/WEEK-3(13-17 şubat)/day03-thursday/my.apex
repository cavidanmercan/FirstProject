List<Integer> numberList = new List<Integer>{17,69,22,66,31};

System.debug('numberList value is : ' + numberList); 


numberList.add(100);
numberList.add(0,999);
System.debug('numberList value is : ' + numberList); 

numberList.add(2,888);
System.debug('numberList value is : ' + numberList); 


numberList.set(0,777);
System.debug('numberList value is : ' + numberList); 

numberList.remove(2);
System.debug('numberList value is : ' + numberList); 

//numberList.clear();
System.debug('numberList value is : ' + numberList); 


// isEmpty()  // return true if the size > 0 false if 0 
Boolean lstHasNumbers =  numberList.isEmpty() ; 
System.debug('lstHasNumbers value is : ' + lstHasNumbers);


Boolean has66 = false;
 
for(Integer each : numberList) {
    if( each==66 ){
        System.debug('FOUND IT'); 
        has66=true;
        break;       
    }
}
System.debug('has66 value is : ' + has66);   

System.debug(numberList.contains(31) ); 

Integer indexOf22=numberList.indexOf(22);
System.debug('indexOf22 value is : ' + indexOf22);
numberList.remove(3); 
System.debug(numberList); 



//ARRAY -SIRALAMAK(en son ders)

// array that can store for String
 String[] groceries = new  String[4]; 
 groceries[0] = 'Bread' ;
 groceries[1] = 'Egg' ;
 groceries[2] = 'Beef' ;
 groceries[3] = 'Banana' ;

  
groceries.add ('Milk') ;
System.debug('groceries value is : ' + groceries);

System.debug( groceries[2]);
System.debug( groceries.get(2));

 groceries[1] = 'Cream Cheese' ;
 System.debug( groceries); 

for(String each : groceries) {
    System.debug('Current value : ' + each);
}

System.debug('value is : ' +  groceries[0]    ); 
System.debug('value is : ' +  groceries[1]    ); 
System.debug('value is : ' +  groceries[2]    ); 
System.debug('value is : ' +  groceries[3]    ); 


for(Integer index=0; index<4 ;index++) {
System.debug('VALUES : ' +  groceries[index] ); 
    
}