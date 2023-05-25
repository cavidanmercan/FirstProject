System.debug('Hello');
System.debug('------------------'); //sdd
String str = 'YourValueHere'; // varstr
System.debug('myVar value is : ' + myVar); //sdv
if( OneConditionHere ){                         //if
    
}else if( OtherConditionHere ){
    
}else{
    
}

switch on yourVariableOrExpression {              //swit (switchOnStringVariable)
    when 'value1' {
        System.debug('value value1 match');
    }
    when 'value2' {
        System.debug('value value2 match');
    }
    when 'value3' {
        System.debug('value value3 match');
    }
    when else {
        System.debug('nothing match');
    }
}


switch on yourVariableOrExpression {           //swit (switchOnIntegerVariable)
    when 1 {
        System.debug('value 1 match');
    }
    when 2 {
        System.debug('value 2 match');
    }
    when 3 {
        System.debug('value 3 match');
    }
    when else {
        System.debug('nothing match');
    }
}

for(Integer i=0; i<10 ;i++) {                           //fori
    
}

for(Integer i=0; i<yourCollectionName.size() ; i++) {                   //fori (foriCollection)
    System.debug('Value at index #'+ i +' is :' + yourCollectionName.get(i) );
}

for(Integer each : yourListOrSetVariable) {              //for (forEach geliyor)
    System.debug('Current value : ' + each);
}
    
List<Integer> yourLstName = new List<Integer>();            //varlist

List<Integer> numberList = new List<Integer>{90,20,40,39,72};  //varlist (varListWithIntegerValues)




 



















