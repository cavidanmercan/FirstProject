trigger OppTriggerClass on Opportunity (before insert, after insert,
                                           before update ,before delete) {

    if(Trigger.isBefore && Trigger.isDelete){
    OppTriggerHandler.handleBeforeDelete(Trigger.old);
    }

    if(Trigger.isBefore && (Trigger.isInsert ||Trigger.isUpdate )){
     OppTriggerHandler.handleBeforeInsertUpdate(Trigger.new); 
    }

    if(Trigger.isBefore && Trigger.isInsert){
     OppTriggerHandler.handleBeforeInsert(Trigger.new); 
    }

    if(Trigger.isAfter && Trigger.isInsert){
     OppTriggerHandler.handleAfterInsert(Trigger.new);  
    }  
     
}

