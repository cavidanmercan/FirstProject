@isTest
private class LeadTriggerTest {
    
    @isTest
    static void testBeforeInsertHappyScenario(){
        
        //Arrange 
        // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN THE TEST , WE NEED TO CREATE OUR OWN
        // List<Lead> allLeads = [SELECT Id,Name from Lead];
        // System.debug('allLeads.size() value is : ' + allLeads.size() ); //0 
        List<Lead> myLeads = new List<Lead>(); 
        myLeads.add( new Lead(FirstName='jon1', LastName='snow1', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon2', LastName='snow2', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon3', LastName='snow3', Company='ABC',LeadSource='Phone')  ); 
    
        //Act 
        insert myLeads ; 

        // Assert
        // First names ==>> TitleCase
        // Last names ==>> UpperCase
        // IN ORDER TO SEE THE UPDATES MADE BY TRIGGER , WE NEED SOQL 
        List<Lead> allLeads = [SELECT Id,Name from Lead];
        System.debug('allLeads.size() value is : ' + allLeads.size() ); //3

        // expect first record in the list Name => Jon1 SNOW1
        Assert.areEqual('Jon1 SNOW1',   allLeads[0].Name    );
        // expect second record in the list Name => Jon2 SNOW2
        Assert.areEqual('Jon2 SNOW2',   allLeads[1].Name    );
        // expect third record in the list Name => Jon3 SNOW3
        Assert.areEqual('Jon3 SNOW3',   allLeads[2].Name    );
        //Assert.areEqual(expected,actual);
    }


    @isTest
    static void testBeforeDelete(){
        
        //Arrange 
        // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN THE TEST , WE NEED TO CREATE OUR OWN
        // List<Lead> allLeads = [SELECT Id,Name from Lead];
        // System.debug('allLeads.size() value is : ' + allLeads.size() ); //0 
        List<Lead> myLeads = new List<Lead>(); 
        myLeads.add( new Lead(LastName='snow1', Company='ABC',Status='Working - Contacted')  ); 
        myLeads.add( new Lead(LastName='snow2', Company='ABC',Status='Working - Contacted')  ); 
        myLeads.add( new Lead(LastName='snow3', Company='ABC',Status='Working - Contacted')  ); 
    
        //Act 
        insert myLeads ; 
        //delete myLeads ;  // can not

        //Assert.areEqual(expected,actual);
    }

}