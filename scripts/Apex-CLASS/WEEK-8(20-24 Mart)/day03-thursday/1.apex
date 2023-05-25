//SELECT Name, ApiVersion, Body FROM ApexTrigger


//SELECT Id, Username, FirstName, LastName FROM User

//SELECT Id, Username, FirstName, LastName, ProfileId FROM User

//SELECT Id, Name FROM Profile


PRACTİCE

// Feel free to use SOQL Building(by flipping the page)
// to observe what's the correct Object name and fields names 

// Get All the Profiles Id, Name fields 
// if the profile name is 
// System Administrator, Standard User , Standard Platform User
SELECT  Id, Name FROM Profile WHERE Name IN ('System Administrator','Standard User','Standard Platform User')

// Get All the Role , Id, Name From Role Standard Object 
SELECT Id, Name FROM UserRole 

SELECT Id, Name, DeveloperName  FROM UserRole

// Get All the RecordType , Id, Name From RecordType Standard Object 
//developerName API adını veriyormuş
SELECT Id, Name, DeveloperName  FROM RecordType


//Group eski dev org data exportta yaptık
SELECT Id, DeveloperName   FROM Group

SELECT Id, DeveloperName, Type  FROM Group
