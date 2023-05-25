
trigger OpportunityTrigger on Opportunity (before insert, after insert,
                                           before update ,before delete) {


    System.debug('Trigger is running for Event : ' 
                        + Trigger.operationType); 
    
  

    if(Trigger.isBefore && Trigger.isUpdate){
        
        // trigger loop 
        for(Opportunity each : Trigger.new) {
           // if the op amount is negative 
           if(each.Amount<0){
           // throw error 'Amount can not be negative'
              //each.addError('Amount can not be negative');
              each.Amount.addError('Amount can not be negative');
           }

        }
            

    }
 }