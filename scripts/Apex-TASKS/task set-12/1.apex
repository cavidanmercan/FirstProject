/*1. Write an Apex Trigger on Account Object 
   - Whenever account is created 
     - automatically fill up account Shipping address using account billing address
       - ShippingStreet      => BillingStreet
       - ShippingCity        => BillingCity
       - ShippingState       => BillingState
       - ShippingCountry     => BillingCountry
       - ShippingPostalCode  => BillingPostalCode

   - Whenever account is updated 

     - Check for the account field SLA__c 
       - if the value is Gold 
         - set the CustomerPriority__c value to High
       - if the value is Silver or Platinum
         - set the CustomerPriority__c value to Medium
         - set the SLAExpirationDate__c to 6 months from Today
       - else 
         - set CustomerPriority__c value to Low 

     - if SLA__c field has value and SLAExpirationDate__c empty
       - addError message : 'Service Level Agreement Expiation date is required'

   - Whenever account is deleted

     - Check for the account field SLAExpirationDate__c and Active__c 
       - if Active__c value is true and SLAExpirationDate__c is not in the past 
       - addError with message 'Can not delete Active Account with SLA not expired'

   - Whenever account is restored from recycle bin(undeleted)
       - Create a Task associated with this account with below details 
       - Task Details 
         - Subject : Follow up with the Account : NameGoesHere
         - Description  : Account was restored, follow up on the details 
         - ActivityDate : Today
         - Priority     : High
         - WhatId       : Id of the The Account entered the trigger

*/

trigger AccountTriggerTask12 on Account ( before insert, after insert,
                                        before update, after update,
                                        before delete, after delete,
                                        after undelete) {
System.debug('The Trigger event is : ' + Trigger.operationType);

if (Trigger.isBefore && Trigger.isInsert) {
    for (Account each : Trigger.new) {
      each.ShippingStreet = each.BillingStreet;
      each.ShippingCity = each.BillingCity;
      each.ShippingState = each.BillingState;
      each.ShippingCountry = each.BillingCountry;
      each.ShippingPostalCode = each.BillingPostalCode;
    }
  }

if (Trigger.isBefore && Trigger.isUpdate) {
    for (Account each : Trigger.new) {
      if (each.SLA__c == 'Gold') {
        each.CustomerPriority__c = 'High';
      } else if (each.SLA__c == 'Silver' || each.SLA__c == 'Platinum') {
        each.CustomerPriority__c = 'Medium';
        each.SLAExpirationDate__c = date.today().addMonths(6);
      } else {
        each.CustomerPriority__c = 'Low';
      }
      if (each.SLA__c != null && each.SLAExpirationDate__c == null) {
          each.SLAExpirationDate__c.addError('Service Level Agreement Expiation date is required');
      }
    }
  }
  
if (Trigger.isBefore && Trigger.isDelete) {
    for (Account each : Trigger.old) {
      if (each.Active__c == 'Yes' && each.SLAExpirationDate__c >= Date.today()) {
        each.addError('Can not delete Active Account with SLA not expired');
      }
    }
  }
  
if (Trigger.isAfter && Trigger.isUndelete) {
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

