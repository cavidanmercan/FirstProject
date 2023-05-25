trigger AccountTriggerClass on Account( before insert, after insert,
                                    before update, after update,
                                    before delete, after delete,
                                    after undelete){

if (Trigger.isBefore && Trigger.isInsert){
    AccountTriggerHandler.handleBeforeInsert(Trigger.new);
   }

if (Trigger.isAfter && Trigger.isInsert){
    AccountTriggerHandler.handleAfterInsert(Trigger.new); 
}
                                    
}