// TASK :  Store the result of below query and print each item out 
/**
// SELECT isClosed, COUNT(Id)
// FROM Opportunity
// GROUP BY IsClosed
 */

//otomatik alias 
AggregateResult[] results = [SELECT isClosed, COUNT(Id) FROM Opportunity
                                    GROUP BY IsClosed];

for(AggregateResult each : results) {
    System.debug(each.get('isClosed') + '-->' + each.get('expr0'));
}


//bizim verdiğimiz alias 
 AggregateResult[] oppResults = [SELECT isClosed, COUNT(Id) CountOfOpps
                                    FROM OPPORTUNITY
                                    GROUP BY IsClosed];


for(AggregateResult each : oppResults) {
    System.debug(each.get('IsClosed')   + '-->' + each.get('CountOfOpps')  ); 
    
}

