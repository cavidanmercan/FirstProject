AggregateResult[] allResults = [SELECT StageName, COUNT(Id) CountOfOpps
                                    FROM OPPORTUNITY
                                    GROUP BY StageName];

//System.debug('allResults value is : ' + allResults); //bu liste gibi verdi
//tek tek görmek için for loop yaptık


for(AggregateResult each : allResults) {
    //System.debug('Current value : ' + each);
    // print in this format  StageName --> CountOfOpps- böylece soql e sorguladığımız ile aynı formatı apex de almış olduk 
    System.debug(each.get('StageName')   + '-->' + each.get('CountOfOpps')  ); 
    
}