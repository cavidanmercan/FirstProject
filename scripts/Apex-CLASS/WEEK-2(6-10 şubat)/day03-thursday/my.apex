/*List<String> studentNames = new  List<String>() ; 
studentNames.add('Nurzat') ; 
studentNames.add('Ali') ;
studentNames.add('Esra') ;
System.debug(studentNames) ; 


List<Integer> scores = new List<Integer>() ; 
scores.add(100);
scores.add(200);
scores.add(300);
scores.add(400);
System.debug(scores) ;

List<Decimal> prices = new List<Decimal>(); 
prices.add(9.99) ; 
prices.add(19.99) ; 
prices.add(29.87) ; 
prices.add(11000.54) ; 
System.debug(prices) ;

List<String> groceries = new List<String>{'Milk','Bread','Egg','Coffee'};
 System.debug(groceries) ;   


List<Integer> numList = new List<Integer>{3,5,7,9,11};
System.debug(numList) ; 

List<Decimal>price = new List<Decimal>{1.99, 2.55,3.44,5.66,7.44};
System.debug(price) ;

List<Id>accountIds = new List<Id>{'0018W0000251OK6QAM','0018W0000251OK6QPY','0018W0000251OK6QTR','0018W0000251OK6QHY','0018W0000251OK6QSS'};
System.debug(accountIds) ;

List<Boolean> answers = new List<Boolean>{true , false , true, true, false}; 
System.debug(answers) ;*/


//LİST-2

/* List<Integer> numberList = new List<Integer>(); 
 
 for(Integer count=1 ; count<=100  ; count++ ){
    numberList.add(count); 
 }

System.debug(numberList) ; */


//öğleden sonrası

    
/*List<Integer> numberList = new List<Integer>(); 
for(Integer count=1 ; count<=100  ; count++ ){
    numberList.add(count); 
 }
System.debug(numberList) ; 
System.debug(numberList.size()         ); */



/*List<Integer> voteNumbers = new List<Integer>(); 
for(Integer count=1 ;  count<= 15 ; count ++){
    voteNumbers.add(10); 
}
System.debug(voteNumbers) ; 


Integer voteCount = voteNumbers.size() ; 
 System.debug(  voteCount  ) ; 
 System.debug(   voteNumbers.size()   ) ; */


//EACHLOOP

/*List<Integer> numberList = new List<Integer>{5,7,4,9,6} ; 
System.debug('Item count: '  + numberList.size()   ); 

for(Integer each  : numberList){
    System.debug(each); 
}*/

// Create a List of String and add 4 items 
// use for each loop to iterate over them print it out 
/*List<String> roles = new List<String>(); 
roles.add('clock-master');
roles.add('screenshot-master');
roles.add('karate-girl');
roles.add('type-master');

//List<String> roles = new List<String>{'clock-master','screenshot-master','karate-girl','type-master'};

for(String eachRole : roles){
    System.debug( eachRole ) ; 
}



for(String eachRole : roles){
    System.debug('Current Role: ' + eachRole ) ; 
}*/



// Create a List of Decimal and add 6 values in it 
// iterate over each item and print it out 

List<Decimal> prices 
    = new List<Decimal>{9.99,  2.59, 3.14 , 9.9 , 10.5}; 


for(Decimal eachPrice  : prices  ){
    System.debug('Price is : ' +  eachPrice ) ; 
}

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers



Decimal sum=0;


for(Decimal eachPrice : prices)
{sum += eachPrice;}    

System.debug('Sum is ' + sum);


