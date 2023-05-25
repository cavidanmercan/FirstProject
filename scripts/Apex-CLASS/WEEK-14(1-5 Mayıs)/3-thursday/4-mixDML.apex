// Get currently loggedin user
// and store it into User variable 


// insert and account and update current user role to CFO

// insert an Account here 
Account a = new Account(Name='cool'); 
insert a; 
// Get currently loggedin user
// and store it into User variable 
Id userId = UserInfo.getUserId();
User u = [SELECT Id, FirstName, Division FROM USER 
            WHERE Id = :userId]; 

// update division field to Education 
u.Division = 'Education' ; 

// update userRole field to 'CFO' 
UserRole roleCFO = [SELECT Id,Name from UserRole 
                    Where Name='CFO']; 
u.UserRoleId = roleCFO.Id ; 
update u ; 

// IF WE DO SOMETHING LIKE THIS IN TRIGGER 
// WE WILL GET AN ERROR CALLED MIXED DML ERROR
// IT'S SAYING YOU CAN NOT PEFORM DML ON
// SET-UP OBJECTS( USER, PROFILE, GROUP, QUEUE)
// AND NON-SETUP ONJECT (ACCOUNT CONTACT, YOURCUSTOMOBJECT__C AND SO ON)
// TOGETHER 

/*
FATAL_ERROR
System.DmlException: Update failed. First exception on row 0 with id 005Dm000000jN0VIAU; 
first error: MIXED_DML_OPERATION, DML operation on setup object is not permitted after you have 
updated a non-setup object (or vice versa): User, original object: Account: []

The solution : 
run one of the operation asynchronously so it can run in it's own execution context (transaction) and get it's own limits , logs and so on. 
@future method will be sufficient in this case to wrap up updating current user role to CFO
You may also create class that implement Queueable , it will be overkill
 for this scenario though.
*/