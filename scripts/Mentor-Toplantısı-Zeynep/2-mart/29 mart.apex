Scenario 4
Requirement: When user updates account record, if user changes account name, throw an error ‘Account name once created cannot be modified’ 
Trigger has to be written on
Which object: Account
What operation: Update
Which event: Before


trigger AccountTrigger on Account (before update, after update) {
//When user updates account record, if user changes account name, throw an error 
//‘Account name once created cannot be modified’ 
if(trigger.isBefore && trigger.isUpdate){

/*for(Account accNew : trigger.new){
    for(Account accOld : trigger.old) {  
       if(accNew.Id==accOld.Id && accNew.Name!=accOld.Name){
        accNew.addError('Account name once created cannot be modified');
       }
    }
        
}*/

//instead of using two for loops, trigger.oldMap
//key is id, value is account object

for(Account accNew : trigger.new){
    Account accOld=trigger.oldMap.get(accNew.Id);
    if(accNew.name!=accOld.name)
    accNew.addError('Account name once created cannot be modified');
}
}
}

Scenario 5 
Requirement: When user updates account record, if billing address is changed, 
update all its child contacts mail address field same as account billing address.
Trigger has to be written on
Which object: Account
What operation: Update
Which event: After


trigger AccountTrigger on Account (before update, after update) {

/When user updates account record, if billing address is changed, 
//update all its child contacts mailing address field same as account billing address.
//I will write it for only street you can expand it with using or operator

if(trigger.isAfter && trigger.isUpdate){

    Set<Id> accountsChanged = new Set<Id>();

    for(Account accNew : trigger.new){
        Account accOld = trigger.oldMap.get(accNew.Id);
        if(accNew.BillingStreet!=accOld.BillingStreet)
        accountsChanged.add(accNew.Id);
    }

    //with soql we will retrieve the fields of the accounts and child contacts

    List<Account> accList=[Select id, billingStreet, (Select Id, mailingstreet from Contacts) 
                           from Account
                           where Id in : accountsChanged];

    List<Contact> cons = new List<Contact>();
    for(Account acc : accList){
        for(Contact con : acc.contacts){
            con.MailingStreet=acc.BillingStreet;
            cons.add(con);
        }
    } 

    update cons;     
}
}




//burada kaldık

Scenario 6
Requirement: An active account should not be deleted.
Trigger has to be written on
Which object: Account
What operation: Delete
Which event: Before

trigger AccountTrigger on Account (before delete) {
    for (Account each : Trigger.old) {
      if (each.Active__c == 'Yes') {
        each.addError('Can not delete Active Account');
      }
    }
  }


Scenario 7 (?)
Requirement: Whenever user deletes account, send a confirmation email to the user.
Trigger has to be written on
Which object: Account
What operation: Delete
Which event: After

trigger AccountTrigger on Account (after delete) {
   
   if (Trigger.isdelete)  {
    List<Task> taskList = new List<Task>();
    for (Account each : Trigger.new) {
      Task t = new Task();
      t.Subject = 'Follow up with the Account ' + each.Name;
      t.Description = 'Account was restored, follow up on the details';
      t.ActivityDate = Date.today();
      t.Priority = 'High';
      t.WhatId = each.Id;
      taskList.add(t);
    }
    insert taskList;


      }
    }
  

    



Scenario 8 (?)
Requirement: Send an email to the user, when user restores an account from recycle bin.
Trigger has to be written on
Which object: Account
What operation: Undelete
Which event: After


trigger AccountTrigger on Account (after undelete) {
  

if (Trigger.isUndelete) {
    List<Task> taskList = new List<Task>();
    for (Account each : Trigger.new) {
      Task t = new Task();
      t.Subject = 'Follow up with the Account ' + each.Name;
      t.Description = 'Account was restored, follow up on the details';
      t.ActivityDate = Date.today();
      t.Priority = 'High';
      t.WhatId = each.Id;
      taskList.add(t);
    }
    insert taskList;
  }

}


