public class AccountOppsTriggerHandler {
  
    public static void handleAfterUpdate(List<Account> accList, Map<Id, Account> accOldMap){

    Set<Id> accIds = new Set<Id>(); 
    for(Account each : accList) {
       
       Account accOld =  accOldMap.get(each.Id) ; 
       // check if Active__c fields has changed and changed to No
       if(each.Active__c != accOld.Active__c && each.Active__c == 'No' ){
          accIds.add(each.Id) ; 
       }
    }
    
    if(accIds.isEmpty() ){
        System.debug('no accounts that entered the trigger has Active__c fields changed to No'); 
        return ; 
    }
   
    List<Opportunity> tobeUpdatedOpps = [SELECT Name, AccountId, StageName
                                        FROM Opportunity
                                        WHERE IsClosed = FALSE 
                                        AND AccountId IN :accIds] ; 

    for(Opportunity each : tobeUpdatedOpps) {
        each.StageName = 'Closed Lost';
    }
    if(!tobeUpdatedOpps.isEmpty() ) {
        update tobeUpdatedOpps ; 
    }

    }
}