@isTest
public class ContactTrigger2Test {

    @isTest
    static void handleTest (){

        //Arrange
        Contact con1=new Contact (LastName='Black', FirstName='Joe');
        Contact con2=new Contact (LastName='Black', FirstName='Mary');

        insert con1;
        insert con2;


        con1.Spouse__c=con2.Id;


        //Act
        ContactTrigger2Handler.isFirstRun=true;

        Test.startTest();
        Update con1;
        Test.stopTest();

        //Assert

        List<Contact> updatedCon = [SELECT Id,Name,Spouse__c,Spouse__r.Name FROM Contact WHERE LastName='Black' ];

       
        Assert.areEqual('Mary Black',updatedCon[0].Spouse__r.Name);

        Assert.areEqual(updatedCon[0].Id,updatedCon[1].Spouse__c);
        
        


    }
  




}