/**
Collection : for storing more than one values 
There are 3 types of collection 

List : ordered collection to store multiple values of same type 
Set  : unordered collection to store multiple unique values of same type removing
Map  : store key value pair in each element (more on that later)
 */

 // Syntax for Creating a list variable
 // and initializing it's value 

 // List< DataType > nameOfYourVariable 
            // = new List< DataType >(); 

List<String> studentNames = new List<String>() ; 


// we can use yourListVariable.add(what You want to add here) ; 
// to add elements into the List 
studentNames.add('Nurzat') ; 
studentNames.add('Ali') ; 
studentNames.add('Esra') ; 

System.debug(studentNames) ; 


/**
Create a List of Integer with name scores
and add 5 items in it  
 */
List<Integer> scores = new List<Integer>() ; 

scores.add(100);
scores.add(200);
scores.add(300);
scores.add(400);
scores.add(500);

System.debug(scores) ; 


/**
Declare a List of Decimal variable called prices
and initialize it's value 
Add 4 items|elements in it and print it out 
 */

List<Decimal> prices = new List<Decimal>(); 
prices.add(9.99) ; 
prices.add(19.99) ; 
prices.add(29.87) ; 
prices.add(11000.54) ; 

System.debug(prices) ; 
Akbar — bugün saat 20:40
/**

Declare List variable initilize it's value 
and add all the items in one shot 

List<DataType> lstName 
        = new List<DataType>{item1, item2,.....itemN} ; 

 */

 List<String> groceries = new List<String>{'Milk','Bread','Egg','Coffee'};

System.debug(groceries) ;   

// create List of Integer and add 5 values in one shot
List<Integer> numList = new List<Integer>{1,5,6,8,4}; 
System.debug(numList); 
// create List of Decimal and add 5 values in one shot 
List<Decimal> prices = new List<Decimal>{1.99 , 2.99, 5.88 , 100.99 , 0.99} ; 
System.debug(prices); 
// create List of Id and  and add 5 values in one shot 
List<Id> accountIds = new List<Id>{ '0018W0000251OK6QAM', 
                                    '0018W0000251OK6QAT', 
                                    '0018W0000251OK6QAY', 
                                    '0018W0000251OK6QAZ', 
                                    '0018W0000251OK6QAA'
                                    }; 
System.debug(accountIds) ; 

// create a List of Boolean add 5 items into it 

List<Boolean> answers = new List<Boolean>{true , false , true, true, false}; 
System.debug(answers) ;





