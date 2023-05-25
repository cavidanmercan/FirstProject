@isTest
public class UpdateContactAddressTest {
    
//create a test setup and create 200 accounts and contacts according to requirements
    @testSetup
    static void setup(){
        List<Account> accList=new List<Account>();
        List<Contact> conList=new List<Contact>();
        
        for(Integer i=0;i<200;i++){
            Account acc=new Account(Name='acc'+i);
            acc.BillingCountry='USA';
            acc.BillingState='Indiana';
            accList.add(acc);
        }
        insert accList;
        
        for(Account acc:[Select id,name from Account]){
            Contact con = new Contact(LastName=acc.Name+'Contact');
            con.AccountId=acc.Id;
            conList.add(con);
        }
        insert conList;
    }
    
//create test method-copy the anonymous window
    @isTest
    public static void test(){
        Test.startTest();
        	UpdateContactAddress obj = new UpdateContactAddress();
	Database.executeBatch(obj);
        Test.stopTest();
        
//assert if 200 records have the mailingstate Indiana
        System.assertEquals(200, [Select count() from Contact where mailingstate='Indiana']);
    }

}
