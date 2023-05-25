public class AccountContactTriggerHandler {
    public static void handleAfterUpdate(List<Account> accList, Map<Id, Account> accOldMap, Map<Id, Account> accNewMap){
    Set<Id> accIds = new Set<Id>(); 
    for(Account each : accList) {
    Account oldAcc = accOldMap.get(each.Id) ; 
    if( each.phone != oldAcc.Phone  ){
        accIds.add(each.Id); 
    }
    }
    
    if(accIds.isEmpty() ){
    System.debug('NO ACCOUNT PHONE NUMBERS CHANGED!!!!');
    return;  
    }

    List<Contact> allContacts = [SELECT Name, AccountId, Phone 
                                FROM Contact
                                WHERE AccountId in :accIds]; 
    if(allContacts.isEmpty()){
    System.debug('NO CONTACTS FOUND UNDER THESE ACCOUNT!!'); 
    return;  
    }

    for(Contact each : allContacts) {
    Account parentAcc = accNewMap.get(each.AccountId);
    each.phone =  parentAcc.phone ; 
    }
    
    if( !allContacts.isEmpty()){
        update allContacts ; 
    }
    }
}