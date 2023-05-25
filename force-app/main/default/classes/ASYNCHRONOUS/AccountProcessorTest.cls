@isTest
private class AccountProcessorTest {
    
    
    @isTest
    public static void testAccountNumOfContactsUpdate(){
        // Arrange
        List<Account> accLst = new List<Account>(); 
        accLst.add( new Account(Name = 'Test 1') ) ;
        accLst.add( new Account(Name = 'Test 2') ) ;
        accLst.add( new Account(Name = 'Test 3') ) ;
        insert accLst ; 
        
        List<Contact> contacts = new List<Contact>(); 
        
        List<Id> accountIds = new List<Id>(); 
        
        for(Integer i=1 ; i<accLst.size() ; i++ ){
            
            contacts.add(    new Contact(AccountId = accLst[i].Id , 
                                         LastName = 'Job '+i ) ) ; 
            // fillup accountid list 
            accountIds.add( accLst[i].Id ); 
        }
        insert contacts ; 
        
        
        // Act 
        Test.startTest(); 
        AccountProcessor.countContacts(accountIds); 
        Test.stopTest(); 
         
        // Assert 
        // expect all 3 accounts Number_Of_Contacts__c have value of 1 
        
        List<Account> updatedAccounts = [SELECT Id,Number_Of_Contacts__c
                                        FROM Account
                                        WHERE Number_Of_Contacts__c = 1];
        Assert.areEqual(3,updatedAccounts.size()) ; 
        
    }    
    
}
        // new Map<Id,Account>(accLst)  = > keySet 