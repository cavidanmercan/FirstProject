trigger AccountContactUpdateClass on Account (after update) {


    if(Trigger.isAfter && Trigger.isUpdate){
     AccountContactTriggerHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap, Trigger.newMap);
    }
}
 
 
