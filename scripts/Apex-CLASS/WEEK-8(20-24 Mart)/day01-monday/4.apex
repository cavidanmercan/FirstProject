trigger oppTrigger2 on Opportunity  (before insert, after insert,
                                   before update, after update, 
                                   before delete, after delete,
                                   after undelete) {


       
// print out the operation type for better debugging experience
System.debug('Trigger is running for Event : ' + Trigger.operationType);

// Requirement :
// When the opportunity is updated
// if the stageName has CHANGED to Closed Won
//  // Create a new Task with below details
// Subject : Follow up with renewal
// ActivityDate : 1 day from Today
// WhatId   :  opp Id
if (Trigger.isAfter && Trigger.isUpdate) {
  // create an empty list of task to store the list of items
  List<Task> taskList = new List<Task>();

  // trigger loop
  for (Opportunity each : Trigger.new) {
    // Trigger.oldMap =>  Map<Id,Opportunity> with old fields value
    Opportunity oldOp = Trigger.oldMap.get(each.Id);
    // if the stageName has CHANGED to Closed Won
    if( each.StageName!=oldOp.StageName && each.StageName=='Closed Won'){
      
      Task t = new Task(); 
      t.Subject       = 'Follow up with renewal ' + each.Name; 
      t.ActivityDate  = Date.today() + 1 ; 
      t.WhatId        = each.Id ; 
      taskList.add(t);  
    }
  }
  // outside the loop , add insert one time 
  insert taskList ; 
}

}

