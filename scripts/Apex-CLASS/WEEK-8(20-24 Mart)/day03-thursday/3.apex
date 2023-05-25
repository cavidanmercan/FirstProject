// Get All the contacts created Today
// if you use actual date 
// SOQL require Date along with the time exatcly in this format 
// 2023-03-23T12:46:08Z
// However we can use all Date literals available in SOQL to make it easy
//https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_dateformats.htm
// TODAY , YESTERDAY, TOMORROW 
// THIS_WEEK, LAST_WEEK,NEXT_WEEK
// THIS_MONTH, LAST_MONTH, NEXT_MONTH
// LAST_90_DAYS , NEXT_90_DAYS , 
// LAST_N_DAYS:n, NEXT_N_DAYS:n      N_DAYS_AGO:n ,
//  NEXT_N_WEEKS:n , LAST_N_WEEKS:n
// AND MORE 

SELECT FirstName, LastName
FROM Contact 
WHERE CreatedDate = YESTERDAY 

// Get all the opportunity created past 2 weeks 
 SELECT Name, CloseDate, StageName, CreatedDate
 FROM Opportunity
 WHERE CreatedDate = LAST_N_WEEKS:2

// Get All the contacts created Today
SELECT FirstName, LastName FROM Contact WHERE CreatedDate= TODAY


// Get all the opportunity ClosedDate is Last 90 Days 
SELECT Name, CloseDate, StageName FROM Opportunity WHERE CloseDate = LAST_90_DAYS


// Get all the opportunity ClosedDate is Last 90 Days 
SELECT Name, CloseDate, StageName FROM Opportunity WHERE CloseDate = LAST_90_DAYS ORDER BY CloseDate Desc