/*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumkin
if it's winter   print  Go to sleep 
if nothing match print invalid season 
*/

String season = 'summer' ; 

if(season == 'spring'){
    System.debug('Go Camping ');
}else if(season == 'summer'){
    System.debug('Go Swimming  ');
}else if(season == 'fall'){
    System.debug('Go Pick Pumkin ');
}else if(season == 'winter'){
    System.debug('Go to sleep ');
}else{
    System.debug('Invalid Season');
}



//-------------
/*
switch on expression {
    when value1 {        // when block 1
        // code block 1
    }    
    when value2 {        // when block 2
        // code block 2
    }
    when value3 {        // when block 3
        // code block 3
    }
    when else {          // default block, optional
        // code block 4
    }
}
*/


String season = 'summer' ;
switch on season {

        when 'spring'{
            System.debug('Go Camping');
        }
        when 'summer'{
            System.debug('Go Swimming');
        }
        when 'fall'{
            System.debug('Go Pick Pumkin');
        }
         when 'winter'{
            System.debug('Go to sleep');
        }
         when else {
        System.debug('Invalid Season ');
    }
}



