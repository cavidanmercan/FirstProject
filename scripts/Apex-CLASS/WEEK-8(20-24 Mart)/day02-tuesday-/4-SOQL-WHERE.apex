SELECT FirstName, LastName FROM Contact WHERE FirstName = 'Sean'


//AND
SELECT Name, AnnualRevenue FROM Account WHERE AnnualRevenue>=500000 AND AnnualRevenue<=1000000 


//OR
SELECT Name, AnnualRevenue FROM Account WHERE AnnualRevenue<=5000 OR AnnualRevenue>=1000000 


SELECT Name, AnnualRevenue FROM Account WHERE (Name !='Dickenson plc' AND Name != 'Edge Communications') AND AnnualRevenue !=null

SELECT Name, AnnualRevenue  FROM Account  WHERE Name = 'Dickenson plc' OR Name = 'Edge Communications' OR Name = 'United Oil & Gas Corp.' 

SELECT Name, AnnualRevenue   FROM Account   WHERE Name IN ('Dickenson plc','Edge Communications','United Oil & Gas Corp.')

SELECT  Name, AnnualRevenue FROM Account WHERE Name IN ('Dickenson plc', 'Edge Communications', 'United Oil & Gas Corp.', 'BLA BLA')
//geçerli 3 sonuç geliyor


 SELECT Name, Amount, StageName FROM Opportunity WHERE StageName IN ('Closed Won','Closed Lost')


SELECT Name, Amount, StageName FROM Opportunity WHERE StageName NOT IN ('Closed Won','Closed Lost')

SELECT Name, AnnualRevenue FROM Account WHERE Name NOT IN ('Dickenson plc', 'Edge Communications') AND AnnualRevenue != null 



SELECT FirstName, LastName  FROM Contact  ORDER BY FirstName DESC NULLS LAST


SELECT FirstName, LastName  FROM Contact  ORDER BY FirstName DESC NULLS LAST LIMIT 4

SELECT Name, Amount, StageName  FROM Opportunity  ORDER BY Amount DESC NULLS LAST LIMIT 3
