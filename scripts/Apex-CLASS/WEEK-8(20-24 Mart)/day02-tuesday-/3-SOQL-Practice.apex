//Aşağıdaki kodu .soql de execute yaptık
SELECT FirstName, LastName, Email FROM Contact


SELECT  LastName, Company FROM Lead



SELECT Id, Name, AnnualRevenue, Phone, Active__c FROM Account




SELECT Subject, Description, Status   FROM Case


SELECT Subject, ActivityDate, WhatId   FROM Task


SELECT LastName, Account.Id, Account.Name, Account.AnnualRevenue FROM Contact

