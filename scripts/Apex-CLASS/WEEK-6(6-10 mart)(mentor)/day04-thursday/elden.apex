/*TASK 10-6
6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)

   */


Date birthDay = date.newInstance(2020, 03, 09) ;

System.debug('day of the birthday value is : ' + birthDay.day()); 
System.debug('month of the birthday value is : ' + birthDay.month()); 
System.debug('year of the birthday value is : ' + birthDay.year()); 

System.debug('isleap year : ' + Date.isLeapYear(birthDay.year())); 

System.debug ('months between today and birthday: ' + birthDay.monthsBetween(Date.today())); 

System.debug ('months between today and birthday: ' + birthDay.daysBetween(Date.today())); 




//TASK 10-7

Opportunity opp1 = new Opportunity(
  Name = ' The Best opportunity',
  CloseDate = Date.newInstance(2022, 4, 9),
  StageName = 'Prospecting'
);

insert opp1;

if (
  opp1.CloseDate.monthsBetween(Date.today()) > 3 &&
  opp1.StageName != 'Closed Won'
) {
  opp1.StageName = 'Closed Lost';
}

System.debug('opp1 value is : ' + opp1);

List <String> stageNames = new List <String> {
         'Prospecting',
         'Qualification',
         'Needs Analysis',
         'Value Proposition',
         'Id. Decision Makers',
         'Perception Analysis',
         'Proposal/Price Quote',
         'Negotiation/Review',
         'Closed Won',
         'Closed Lost'
};

String selectedStageName = stageNames.get(Math.round(Math.random()*9));

System.debug('selectedStageName value is : ' + selectedStageName); 


Opportunity opp2 = new Opportunity(
  Name = ' The Worst opportunity',
  CloseDate = Date.newInstance(2022, 2, 9),
  StageName = 'Closed Lost'
);

insert opp2;

if (
  opp2.CloseDate.monthsBetween(Date.today()) > 3 &&
  opp2.StageName != 'Closed Won'
) {
  opp2.StageName = 'Closed Lost';
}

System.debug('opp2 value is : ' + opp2);




//TASK 10-8
Task 8
// Create a new Contact object and set its field values



// Insert the new Contact record into the org


//insert newContact;

// Check if today is the contact's birthday

// If today is the contact's birthday, print a message

// 'It's your Birthday Today, Tada!'

// If today is not the contact's birthday, print a different message
 
//'It's not your Birthday Today'
// Create a new Contact object and set its field values

Contact newContact = new Contact(
    LastName    = 'Cipil',
    FirstName   = 'Fatih',
    BirthDate   = Date.newInstance(1995, 03, 09),
    Email       = 'fatihcipil@gmail.com'
);

// Insert the new Contact record into the org


insert newContact;

// Check if today is the contact's birthday

if(newContact.Birthdate.month() == Date.today().month() &&
    newContact.Birthdate.day() == Date.today().day()
    ){
        System.debug('It\'s your Birthday Today, Tada! '); 
    } else {
        System.debug('It\'s not your Birthday Today');
    }


//TASK 10-9
/9. Create a Account with Name value set 
   - insert it into Salesforce
   - Create a Contact with LastName filled up under this Account
   - insert it into Salesforce
   - Create Task with below fields set 
      - WhatId = Id of the Account above
      - WhoId  = Id of the Contact above 
      - Subject = 'Follow up with YourContactNameGoesHere' ; 
      - Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
      - ActivityDate = 7 Days from Today
      - Status = 'Pending' ;/

Account acc1 = new Account(Name = 'Account from VSCode');
insert acc1;

Contact cont1 = new Contact (
   LastName = 'Poslavsky',
   AccountId = acc1.Id
);

insert cont1;

Task task1 = new Task (
   WhatId          = acc1.Id,
   WhoId           = cont1.Id,
   Subject         = 'Follow up with' + cont1.LastName ,
   Description     = 'Have a chat with' + cont1.LastName + 'from ' + acc1.Name,
   ActivityDate    = Date.today() + 7,
   Status = 'Pending' 
);

insert task1;


//TASK 10-10
//  Create an Account variable with name targetAcc and assign value with below fields 


//  Name, BillingState, BillingCity, BillingCountry, BillingPostalCode


//  insert it into Salesforce


//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry


//       - ShippingState       has same value as BillingState


//       - ShippingCity        has same value as BillingCity

//       - ShippingPostalCode  has same value as BillingPostalCode


// save it back to Salesforce


Account targetAcc = new Account ();
targetAcc.Name = 'VSCode Account';
targetAcc.BillingState = 'IL';
targetAcc.BillingCity = 'Chicago';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '60060';

insert targetAcc;
System.debug('targetAcc value is : ' + targetAcc); 
//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
targetAcc.ShippingCountry = targetAcc.BillingCountry;
//       - ShippingState       has same value as BillingState
targetAcc.ShippingState = targetAcc.BillingState;
//       - ShippingCity        has same value as BillingCity
targetAcc.ShippingCity = targetAcc.BillingCity;
//       - ShippingPostalCode  has same value as BillingPostalCode
targetAcc.ShippingPostalCode = targetAcc.BillingCity;
// save it back to Salesforce
update targetAcc;





//galiba bu da task 10-11


Account targetAcc = new Account ();
targetAcc.Name = 'Test VSCode Account';
targetAcc.BillingState = 'TX';
targetAcc.BillingCity = 'Houston';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '72345';

insert targetAcc;

List<Contact> contactList = new List<Contact>();
for(Integer i=0; i<5 ;i++) {
    Contact con = new Contact (LastName = targetAcc.Name + i);
    con.MailingCountry = targetAcc.BillingCountry;
    con.MailingState = targetAcc.BillingState;
    con.MailingCity = targetAcc.BillingCity;
    con.MailingPostalCode = targetAcc.BillingPostalCode;
    con.AccountId = targetAcc.Id;
    contactList.add(con);
}
insert contactList;
System.debug('contactList value is : ' + contactList); 


