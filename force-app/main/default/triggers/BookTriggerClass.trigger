trigger BookTriggerClass on Book__c (
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete) {
  

  if (Trigger.isBefore && Trigger.isUpdate) {
  BookTriggerHandler.handleBeforeUpdate(Trigger.new , Trigger.oldMap); 
}


  if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
  BookTriggerHandler.handleBeforeInsertUpdate(Trigger.new);
}


  if(Trigger.isAfter && Trigger.isUndelete){
  BookTriggerHandler.handleAfterUndelete(Trigger.new);
}


if (Trigger.isBefore && Trigger.isUpdate) {
  //List<Book__c> with old field values
//   for (Book__c eachOld : Trigger.old) {
//     System.debug('eachOld.Name value is : ' + eachOld.Name);
//   }
// }

}



}