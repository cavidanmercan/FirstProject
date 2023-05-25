//1. soru

// SELECT Count(ID) FROM Account 

AggregateResult result = [SELECT Count(ID), MAX(AnnualRevenue) 
                            FROM Account ] ; 
System.debug('result value is : ' + result);
// get the count value out of AggregateResult
// we have get method that accept the column name and return the value 

//alias lara üstteki system.debug ı run yapıp output dan baktık
System.debug('Count of Account is ' +  result.get('expr0')       ); 
System.debug('MAX(AnnualRevenue) is ' + result.get('expr1')       ); 


//2. soru
// SELECT Count Of Opps and Min Opps amount for All opportunities 
// Store the result into a variable and print it out 
// give alias to your aggregate function as CountOfOpps , LowestAmount

AggregateResult oppResult = [SELECT COUNT(Id) CountOfOpps, MIN(Amount)LowestAmount
                            FROM OPPORTUNITY];


//alias lı hali     

System.debug('Count of Opps is ' +  oppResult.get('CountOfOpps')      ); 
System.debug('MIN(Amount) is ' +    oppResult.get('LowestAmount')    ); 


//3. SORU

// If the SOQL Query return single row, we can store it into one AggregateResult variable
// When we have multiple rows as a result of GROUP BY
// Then we will get one AggregateResult for every row
// and we can store it in a List or Array 
// List<AggregateResult> or just AggregateResult[]
// List<AggregateResult>allResults = 


AggregateResult[] allResults = [SELECT StageName, COUNT(Id) CountOfOpps
                                    FROM OPPORTUNITY
                                    GROUP BY StageName];

// System.debug('allResults value is : ' + allResults); //bu liste gibi verdi
//tek tek görmek için for loop yaptık


for(AggregateResult each : allResults) {
    //System.debug('Current value : ' + each);
    // print in this format  StageName --> CountOfOpps- böylece soql e sorguladığımız ile aynı formatı apex de almış olduk 
    System.debug(each.get('StageName')   + '-->' + each.get('CountOfOpps')  ); 
    
}






