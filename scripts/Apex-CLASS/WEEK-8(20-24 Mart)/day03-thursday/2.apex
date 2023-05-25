SELECT  Id, Author__c, Price__c, Year__c, Description__c   FROM Book__c WHERE Description__c !=NULL OR Price__c != NULL


//Tüm fieldleri nasıl çekeriz 200 record limiti var -bunları data exportta yaptık vscode seç command palette .....
SELECT FIELDS (ALL) FROM Account LIMIT 200

SELECT FIELDS (STANDARD) FROM Account LIMIT 200

SELECT FIELDS (CUSTOM) FROM Account LIMIT 200

SELECT FIELDS (ALL) FROM Book__c LIMIT 200

SELECT FIELDS (CUSTOM) FROM Book__c LIMIT 200
SELECT FIELDS (STANDARD) FROM Book__c LIMIT 200


// LIKE  % (WILD CARD, it can represent 0 or more characters )
// Get all contacts First Name and LastName 
// if FirstName starts with letter A 

//SELECT FirstName, LastName FROM Contact WHERE FirstName LIKE 'A%'

//SELECT FirstName, LastName FROM  Contact WHERE FirstName LIKE 'JO%'
//SELECT FirstName, LastName FROM Contact WHERE FirstName LIKE '%A'

//SELECT FirstName, LastName FROM Contact WHERE FirstName LIKE '%A%'

//SELECT FirstName, LastName FROM Contact WHERE FirstName LIKE 'A%Y'

// Get all contacts First Name and LastName 
// if FirstName starts with A and Ends with Y 
// AND has exactly 4 Charcters (meaning there are 2 character in between A and Y)

// We can use LIKE 'A__Y'  
// it matches  Andy, Anny, Abcy, APZy, A12y,aXYy
SELECT FirstName, LastName FROM Contact WHERE FirstName LIKE 'A__Y'



