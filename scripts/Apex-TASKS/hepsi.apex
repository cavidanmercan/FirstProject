```java

SET6-1



SET6-2


SET6-3


SET6-4


SET6-5


````

```java

SET6-6 


SET6-7

SET6-8

SET6-9

SET6-10


````



```java

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

````