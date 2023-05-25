trigger OpportunityTrigger on Opportunity (before insert, after insert
                                            , before delete) {


    System.debug('Trigger is running for Event : ' 
                        + Trigger.operationType); 
    

    // Requirement : 
    // If the opportunity is in Closed Won stage 
    // It should be be deleted 
    // Throw error message : You can not delete Op in Closed Won stage 
    if(Trigger.isBefore && Trigger.isDelete){
       // trigger loop
       for(Opportunity each : Trigger.old) {
        // If the opportunity is in Closed Won stage
        if( each.StageName=='Closed Won'){
            
            each.addError('You can not delete Op in Closed Won stage');

        }

       }
        
    }
 }