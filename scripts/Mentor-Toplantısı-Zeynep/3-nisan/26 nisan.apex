//!CROSS RELATIONSHIP
//dev org da contact ta Spouse diye bir lookup field oluşturduk. 
//contact da new record oluşturduk (A) onun spouse kısmına başka bir contact (B) seçtik.
//trigger ile yapılmak istenen A nın spouse u B olarak seçilmişse otomatik olarak B nin de spouse u A olsun 


trigger ContactTrigger2 on Contact (after insert, after update) {

// Scenario: Create a spouse field ( lookup field to contact ) on contact object
// Whenever I insert or update a spouse field, create a cross relationship between two contacts.
// Ex: If I select Eva Brown as Jon Brown's spouse, make John Brown , Eva Brown's spouse by default.
// Jon Brown-> spouse: Eva Brown
// Eva Brown-> spouse: Jon Brown( with trigger)




// List<Contact> conList = new List<Contact>();

// for(Contact each: Trigger.new){
//     if(each.Spouse__c!=null){
    
//     Contact con = new Contact();

//     con.Id=each.Spouse__c;

//     con.Spouse__c=each.Id;

//     conList.add(con);

//     }
// }

// update conList;





ContactTrigger2Handler.handle(Trigger.new);

}


public class ContactTrigger2Handler {
 
    public Static Boolean isFirstRun=true;

    public static void handle (List<Contact> con2List){

    if (isFirstRun){
        isFirstRun=false;


    List<Contact> conList = new List<Contact>();

    for(Contact each: con2List){
        if(each.Spouse__c!=null){
    
        Contact con = new Contact();

        con.Id=each.Spouse__c;

        con.Spouse__c=each.Id;

        conList.add(con);

    }
}

update conList;
}
}
}
 
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