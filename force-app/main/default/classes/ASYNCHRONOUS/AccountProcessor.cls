public class AccountProcessor {
    
    /**
*Create an Apex class:
Name: AccountProcessor
Method name: countContacts
The method must accept a List of Account IDs
The method must use the @future annotation
The method counts the number of Contact records associated 
to each Account ID passed to the method and updates the 'Number_Of_Contacts__c' field 
with this value
**/

    @future
    public static void countContacts(List<Id> accountIds){
        
        List<Account> toBeUpdatedAccounts = new  List<Account>(); 
        
        List<Account> myAccounts = [SELECT Id, (SELECT Id, Name from Contacts) 
                                    Number_Of_Contacts__c 
                                    FROM Account 
                                    WHERE Id IN :accountIds]; 
        for(Account each : myAccounts){
            //List<Contact> childContacts = each.Contacts ;
            //each.Number_Of_Contacts__c = childContacts.size(); 
            each.Number_Of_Contacts__c = each.Contacts.size(); 
            toBeUpdatedAccounts.add(each);
        }
        update toBeUpdatedAccounts ;   
    }
    
}
