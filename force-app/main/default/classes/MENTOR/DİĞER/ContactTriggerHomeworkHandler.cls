public class ContactTriggerHomeworkHandler {


    public static void handleAfterInsert(List<Contact> ConList){

        Set<Id> accountIds = new Set<Id>();
        for (Contact con : ConList) {
            if (con.AccountId!=null) {
                accountIds.add(con.AccountId);
            }
        }
        
        List<AggregateResult> results = [
            SELECT AccountId, COUNT(Id) totalContacts
            FROM Contact
            WHERE Active__c = TRUE AND AccountId IN :accountIds
            GROUP BY AccountId];

        List<Account> accountsToUpdate = new List<Account>();
        
        for (AggregateResult result : results) {
            Account acc=new Account(id=(id)result.get('accountid'),
                                    active_contacts__c=(decimal)result.get('totalContacts'));
            accountsToUpdate.add(acc);
           }

        System.debug(accountsToUpdate);
      
        update accountsToUpdate;
  }


     public static void handleAfterUpdate(List<Contact> ConList, Map<Id, Contact> conOldMap){
        
    Set<Id> ids = new Set<Id>();
        for (Contact con : ConList) {
            Contact oldCon=conOldMap.get(con.id);
            if(con.active__c!=oldCon.active__c)           
                ids.add(con.AccountId);
            if(con.AccountId!=oldCon.AccountId){  
                ids.add(con.AccountId);
                ids.add(oldCon.AccountId);
            }
        }

        AggregateResult[] result=[SELECT AccountId, count(id) totalContacts FROM Contact
                                  WHERE Active__c=true AND AccountId IN:ids
                                  GROUP BY AccountId];

        List<Account> accToUpdate=new List<Account>();

        for (AggregateResult ar : result) {
            Account acc=new Account(id=(id)ar.get('AccountId'),
                                    active_contacts__c=(double)ar.get('totalContacts'));
            accToUpdate.add(acc);
        }

        update accToUpdate;


    }

    }
