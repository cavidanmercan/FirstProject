trigger OpportunityTrigger on Opportunity (before insert) {


System.debug('Trigger is running for Event : ' 
                    + Trigger.operationType); 


// Requirement : 
// Anytime new Opportunity is created 
//if the Amount field is empty 
// fill it up with 10000
if(Trigger.isBefore && Trigger.isInsert){
    //trigger loop
    for(Opportunity each : Trigger.new) {
        if (each.Amount==null){
            each.Amount=10000;
        }
    }
        
}
}