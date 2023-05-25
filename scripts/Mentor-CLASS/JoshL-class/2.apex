/* 
Practice
season: winter - boots
        spring - sneakers
        summer - sandals
        autumn - loafers
        */

String season = 'winter';

if(season=='winter')
{System.debug('Wear your boots');}
else if (season=='spring')
{System.debug('Wear your sneakers');}
else if (season=='summer')
{System.debug('Wear your sandals');}
else  
{System.debug('Wear your loafers');}



switch on season{
    when 'winter'{
        System.debug('Wear your boots');
    }
    when 'spring'{
        System.debug('Wear your sneakers');
    }
    when 'summer'{
        System.debug('Wear your sandals');
    }
    when else{
        System.debug('Wear your loafers');
    }
}














