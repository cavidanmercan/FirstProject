trigger ContactTriggerClass on Contact (
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete) {

   if (Trigger.isAfter && Trigger.isInsert) {
    ContactTriggerHandler.handleAfterInsert(Trigger.new);
}


}


