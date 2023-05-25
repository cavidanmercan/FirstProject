//Apex Triggers modulünü yaptık
Add a checkbox field to the Account object:

Field Label: Match Billing Address
Field Name: Match_Billing_Address
Note: The resulting API Name should be Match_Billing_Address__c.
Create an Apex trigger:
Name: AccountAddressTrigger
Object: Account
Events: before insert and before update
Condition: Match Billing Address is true
Operation: set the Shipping Postal Code to match the Billing Postal Code

trigger AccountAddressTrigger on Account (before insert, 
                                          before update) {

    for(Account each  :  Trigger.new ){
        
        if(each.Match_Billing_Address__c == true  ){
            each.ShippingPostalCode = each.BillingPostalCode; 
        }
        
    }
    
}

Create a bulkified Apex trigger that adds a follow-up task to an opportunity if its stage is Closed Won. Fire the Apex trigger after inserting or updating an opportunity.
Create an Apex trigger:
Name: ClosedOpportunityTrigger
Object: Opportunity
Events: after insert and after update
Condition: Stage is Closed Won
Operation: Create a task:
Subject: Follow Up Test Task
WhatId: the opportunity ID (associates the task with the opportunity)
Bulkify the Apex trigger so that it can insert or update 200 or more opportunities
trigger ClosedOpportunityTrigger on Opportunity (after insert ,after update) {

    List<Task> taskList = new List<Task>(); 
     
    for(Opportunity each  : Trigger.new){
        // check if the old value is not same as new value
        // new value is Closed Won 
        //Opportunity oldOp = Trigger.oldMap.get(each.Id); 
        //if(each.StageName!= oldOp.StageName && each.StageName=='Closed Won'){
        if(each.StageName=='Closed Won'){
            Task t = new Task(); 
            t.Subject = 'Follow Up Test Task'; 
            t.WhatId  =  each.Id   ;
            taskList.add(t); 
        }        
    }
    insert taskList ; 
}