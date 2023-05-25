CHİLD TO PARENT

SELECT Name, Account.Id, Account.Name FROM Contact WHERE Account.Id!=Null

SELECT Subject, Account.Name FROM Case 

//SELECT Subject, Account.Name FROM Case WHERE Account.Name  != null

//SELECT Subject, Account.Name FROM Case WHERE Account.Name LIKE 'United%'

//SELECT Subject, Account.Name, Contact.Name FROM Case WHERE Account.Name LIKE 'United%'


//SELECT Subject, Account.Name, Contact.Name, CreatedBy.Name FROM Case WHERE Account.Name LIKE 'United%'


//SELECT Name, Price__c, Contact__r.Name FROM Book__c

//SELECT Name , Price__c , Contact__r.Name FROM Book__c ORDER BY Contact__r.Name ASC NULLS LAST



// Get All the Books Name, Price, Contact Name 
// Sort the result by Conact Name and show empty values on the botton 
// Filter the result to show only Books with Contact Name Snow 
SELECT Name , Price__c , Contact__r.Name FROM Book__c WHERE Contact__r.Name='Snow' 


SELECT COUNT(Id), COUNT_DISTINCT(Name), SUM(Amount),MAX(Amount), MIN(Amount), AVG(Amount) FROM OPPORTUNITY
