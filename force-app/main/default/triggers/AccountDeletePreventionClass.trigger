trigger AccountDeletePreventionClass on Account(before delete) {
  
    if(Trigger.isBefore && Trigger.isDelete){
    AccountTriggerHandler.handleBeforeDelete(Trigger.old, Trigger.oldMap);
   }

}
  
