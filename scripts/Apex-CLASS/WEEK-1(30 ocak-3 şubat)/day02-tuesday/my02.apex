String studentName='Cavidan';
Integer studentAge= 38;
String studentState= 'TR';
Boolean attendClass = true;
Decimal studentHeigh = 5.1;


System.debug ('My name is ' + studentName + '.');           
System.debug ('I am ' + studentAge + ' years old.');
System.debug ('I live in ' + studentState + ' Country.'); 
System.debug ('I attend class daily ' + attendClass);
System.debug ('I am ' + studentHeigh + ' feet tall.');



//Integer num1 = 10 ;
//Integer num2 = 20 ;
//Integer num3 = 30 ;
 
Integer num1 = 10 , num2 = 20 , num3 = 30 ; 

Boolean isNum1GreaterThanNum2 = num1 > num2;
System.debug ( 'Is Num1 Greater Than Num2 : ' +  isNum1GreaterThanNum2  );

Boolean isNum2LessThanNum3 = num2 < num3;
System.debug ( 'Is Num2 Less Than Num3 : ' +  isNum2LessThanNum3  );

System.debug ( 'Is Num1 Greater Than or Equals Num3 : ' +  (num1 >= Num3)  );

System.debug (  num3 == num2  );
System.debug('Is num3 and num2 equal? : '  +   (num3 == num2)   );

System.debug('Is num1 not equal to num2 : '  + (num1 != num2)    );
System.debug('Is num1 not equal to num2 : '  + (num1 <> num2)    );

String language = 'Apex' ; 
System.debug ('Is the language apex or not :' + (language == 'aPEx'));



Integer num4= 40, num5=50, num6 = 60 ; 

Boolean isNum4Between20And45 = (num4 > 20) && (num4 < 45) ;

System.debug ('Is num4 between 20 and 40 : ' + isNum4Between20And45);

System.debug('is '  + num4 + ' Between 20 And 45 : ' + isNum4Between20And45);  //true
           
Boolean isNum5Greater100OrLessThan20 =  (num5>100) || (num5<20) ;  //false
System.debug('is num5 is greater than 100 or less than 20 ' + isNum5Greater100OrLessThan20);

System.debug( isNum4Between20And45  ); //true
System.debug(!isNum4Between20And45 );  //false

System.debug( true  ); //true
System.debug(!true );  //false

// ------Compound Operator. : += -= *= /=

Integer score = 100 ; 

// increase the value of the score by 5 

//score = score + 5 ;  // 105 
  
score += 5 ;   // 105 
System.debug('increase the value of the score by 5: ' + score);

// decrease the value of the score by 55 

//score = score - 55 ; // 50
  
score -= 55 ;  // 50

System.debug('decrease the value of the score by 55: ' + score);

// double the value of score (multiply by 2 )

// score = score * 2 ; // 100
   
score *= 2 ; // 100 

System.debug('double the value of score: ' + score);

// divide the current value of score by 4 and reassign 
//   score = score / 4 ; //25
    score /= 4 ; // 25 ;  

System.debug('divide the current value of score by 4: ' + score);



  String myName = 'Jon' ; 
  
  myName += ' Snow' ;  // Jon Snow
  myName += ' of Winterfell'; 
  System.debug('Name: ' + myName);
