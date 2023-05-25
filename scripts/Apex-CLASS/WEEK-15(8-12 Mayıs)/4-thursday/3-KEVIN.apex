//!TRAİLHEAD-FUTURE UNIT YAPTI 


public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accIds){
        
        List<Account> accounts = [SELECT Id, Name, Number_Of_Contacts__c, (SELECT Id, FirstName, LastName FROM Contacts)
                                  FROM Account WHERE Id IN:accIds];
        
        for (Account each : accounts){
            each.Number_Of_Contacts__c = each.Contacts.size();
        }
        
        update accounts;
    }
    
}


//!apex-anon

List<Account> accounts = [SELECT Id FROM Account];
List<Id> accIds = new List<Id>();
for(Account each : accounts){   
            accIds.add(each.Id);
}
AccountProcessor.countContacts(accIds);




//!test class

@isTest
public class AccountProcessorTest {
    
    @isTest
    static void testAccountProcessor(){
        
        //arrange
        List<Account> accList = new List<Account>();
        for(Integer i = 0; i<10; i++){
            accList.add(new Account(Name = 'Test ' +i));  
        }
        insert accList;
        
        List<Id> allAccountsIds = new List<Id> ();
        List<Contact> conList = new List<Contact>();
        
        for(Account each : accList){
            
            allAccountsIds.add(each.Id);
            for (Integer i = 0; i<5 ; i++){
                Contact con = new Contact(FirstName = each.Name, LastName = 'Test', AccountId = each.Id);
                conList.add(con);
            }
        }
        insert conList;
        
         //act
         Test.startTest();
        AccountProcessor.countContacts(allAccountsIds);
        Test.stopTest();
        //assert
        List<Account> theAccounts = [SELECT Number_Of_Contacts__c FROM Account WHERE Id IN :allAccountsIds];
        
        for (Account each : theAccounts){
            Assert.areEqual(5, each.Number_Of_Contacts__c);
        }
    }
    

}