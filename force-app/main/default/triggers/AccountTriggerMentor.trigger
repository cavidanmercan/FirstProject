trigger AccountTriggerMentor on Account (before update, after update) {

    //when user updates account's billing street, change the related contacts mailing street
    
    if(trigger.isAfter && trigger.isUpdate){
    
        Set<Id> accountsChanged = new Set<Id>();
    
        for(Account accNew : trigger.new){
            Account accOld =trigger.oldMap.get(accNew.Id);
            if(accNew.BillingStreet!=accOld.BillingStreet){
                accountsChanged.add(accNew.Id);
            }
        }
    
    //with soql we will retrieve the fields of the account and child contacts
    
    List<Account> accList = [Select Id, Billingstreet, (Select Id, MailingStreet from Contacts)
                            from Account
                            where Id in : accountsChanged ];
    
    List<Contact> conList = new List<Contact>();
    
    for( Account acc : accList){
        for(Contact con : acc.Contacts){
            con.MailingStreet=acc.BillingStreet;
            conList.add(con);
        }
    }                       
                           
    update conList;
    
    }
                        
    
    }