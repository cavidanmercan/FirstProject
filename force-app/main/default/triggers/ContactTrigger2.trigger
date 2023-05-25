trigger ContactTrigger2 on Contact (after insert, after update) {

// Scenario: Create a spouse field ( lookup field to contact ) on contact object
// Whenever I insert or update a spouse field, create a cross relationship between two contacts.
// Ex: If I select Eva Brown as Jon Brown's spouse, make John Brown , Eva Brown's spouse by default.
// Jon Brown-> spouse: Eva Brown
// Eva Brown-> spouse: Jon Brown( with trigger)



ContactTrigger2Handler.handle(Trigger.new);


// List<Contact> conList = new List<Contact>();

// for(Contact each: Trigger.new){
//     if(each.Spouse__c!=null){
    
//     Contact con = new Contact();

//     con.Id=each.Spouse__c;

//     con.Spouse__c=each.Id;

//     conList.add(con);

//     }
// }

// update conList;


}