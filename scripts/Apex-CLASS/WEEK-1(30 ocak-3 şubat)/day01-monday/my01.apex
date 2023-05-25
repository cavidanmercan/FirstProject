//this is a comment line 

System.debug('Hello World');
System.debug('More World');

String name = 'Cavidan';
System.debug(name);
System.debug('My name is : ' +name);
name = 'Mustafa'; //tekrar tanımlamaya gerek yok
System.debug('My new name is : ' +name);

Integer score = 66;
System.debug('Passing score is ' + score);
//score= 86;

System.debug('The result is '+ score+20 ); // result is 6620
System.debug('The result is '+ (score+20) ); // result is 86
    

Decimal pi = 3.14 ;
System.debug('The value of pi '  + pi  );

Double price = 199.99 ;
System.debug('The price value is '  + price );



Boolean passed = true;
System.debug('Value of passed boolean variable '  + passed);
passed = false;
System.debug('Value of passed boolean variable '  + passed);


// variable Data type that can store Salesforce Record Id
ID myLeadId = '00Q8W00000gDbIyUAK';
System.debug(myLeadId);

Long distanceToMars = 10000000000000L; 
System.debug('Distance to Mars long value ' + distanceToMars);

// Quick explanation on some Technical Jargons
// Declaring variable 
Integer age  ; 

// Assigning the value of the variable
age = 20 ; 

// Declaring variable and initilizing it's value 
Integer amount = 100 ; 
// re-assigning value 
amount = 200 ; 

// Null as a value , null means there is no value 

//Integer count ;  // if a variable is not assigned to any value 
                   //it will get null value
Integer count = null ; // here we are explicitly assigning to null
System.debug('The value of count is ' + count);

// re-assign the value of count variable to the value of amount variable 
count =  amount ; 
System.debug('The value of count is ' + count);

// re-assign the value of count variable
// to the value of amount variable + 1000
count = amount + 1000 ; //1200
System.debug('New Value of count is ' + count );

// Operator  + - * / 
Integer num1 = 200 ; 
Integer num2 = 20 ; 
Integer result ; 
// Use these 2 variables to print out below result 
/*
 The addition result between num1 and num2 is resultGoesHere
 The subtraction result between num1 and num2 is resultGoesHere
 The multiplication result between num1 and num2 is resultGoesHere
 The division result between num1 and num2 is resultGoesHere
*/
// addition 
result = num1+ num2 ; 

System.debug('The addition result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// subtraction 
result = num1 - num2 ; 
System.debug('The subtraction result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// multiplication 
result = num1 * num2 ; 
System.debug('The multiplication result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// division 
result = num1 / num2 ; 
System.debug('The division result between ' + num1 + ' and ' + num2 + ' is ' +  result );













