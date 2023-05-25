trigger OppUpdateTrigger on Opportunity (after update) {

/**
 * If Opportunity amount is updated to greater than 100000
 * Update the description field to high amount
 * if not update it to low amount
 * 
 */


List<Opportunity> updatedOpps = new List<Opportunity>(); 

for(Opportunity each : Trigger.new) {
   
    if(each.Amount > 100000){
        each.Description = 'high amount';
    }else {
         each.Description = 'low amount';
    }
    
    updatedOpps.add(each);  

}

update updatedOpps ; 


}