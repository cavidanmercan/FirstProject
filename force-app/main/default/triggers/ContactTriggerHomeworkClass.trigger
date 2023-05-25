trigger ContactTriggerHomeworkClass on Contact ( before insert, after insert,
                                    before update, after update,
                                    before delete, after delete,
                                    after undelete) {

      

    if (Trigger.isAfter && Trigger.isInsert) {
    ContactTriggerHomeworkHandler.handleAfterInsert(Trigger.new);
}

    if(trigger.isAfter && trigger.isUpdate){
    ContactTriggerHomeworkHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap); 
}


}
