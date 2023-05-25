trigger AccountOppsUpdateClass on Account (after update) {


    if(Trigger.isAfter && Trigger.isUpdate){
        AccountOppsTriggerHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap);
    }

}