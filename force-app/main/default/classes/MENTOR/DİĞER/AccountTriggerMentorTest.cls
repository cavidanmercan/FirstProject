@isTest
public class AccountTriggerMentorTest {
    
    
        @isTest
        static void TestTrigger(){
    
    
            //prepare test data, Arrange
    
            Account a1 = new Account(Name='Salesforce',BillingStreet='Broadway');
            insert a1;
            Contact c1 = new Contact(LastName='Brown', AccountId=a1.Id);
            insert c1;
    
            a1.BillingStreet='Longway';
    
            //take an action, Act
            test.startTest();
    
            update a1;
    
            test.stopTest();
    
    
            //Assert
            //write a query to retrieve data
    
            Account a1Updated=[Select Id, Name , BillingStreet, (Select id, LastName, MailingStreet from Contacts)
                             from Account where name='Salesforce'];
    
            //System.assertEquals(expected, actual)
            String actualValue=a1Updated.Contacts[0].MailingStreet;
            Assert.areEqual('Longway',actualValue);
    
    
        }
     
    }