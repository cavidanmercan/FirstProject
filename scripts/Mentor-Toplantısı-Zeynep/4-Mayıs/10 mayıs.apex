//Batchable


public class BatchApex implements Database.Batchable<sobject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        //prepare the data 
        return Database.getQueryLocator('select id, name from Account');   
    }
    //gets the query from the start method as list
    public void execute(Database.BatchableContext bc, List<Account> accList){
        
        for(Account acc : accList){
            acc.Active__c='yes';
        }        
        update accList;         
    }  
    public void finish(Database.BatchableContext bc){}    
}


//apex-anon
BatchApex obj = new BatchApex();
Database.executeBatch(obj,100);


//Batchable

public class UpdateContactAddress implements Database.Batchable<sobject> {

    public Database.QueryLocator start(Database.BatchableContext bc){
    return Database.getQueryLocator('Select id, name, billingcity, billingstate,(select id, mailingcity, mailingstate from Contacts) from Account where billingcountry=\'USA\'');
}

    public void execute(Database.BatchableContext bc, List<Account> accList){
    List<Contact> conList = new List<Contact>();
    for( Account acc: accList){
        for(Contact con : acc.contacts){
            con.MailingCity=acc.BillingCity;
            con.MailingState=acc.BillingState;
            conList.add(con);
        }
    }
    update conList;
}

    public void finish(Database.BatchableContext bc){}

}


//apex-anon
UpdateContactAddress obj = new UpdateContactAddress ();
Database.executeBatch(obj);



//test class


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


//Batchable--Stateful

public class BatchApexStateful implements Database.Batchable<sobject>, Database.Stateful {
    
    public Integer numberOfRecordsUpdated=0;
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select id, rating from Account');
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList){
        
        for( Account acc : accList){
           acc.rating='hot';
           numberOfRecordsUpdated++;
        }
        
        update accList;
        
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug(numberOfRecordsUpdated+' accounts updated');
    }

}


//apex-anon
BatchApexStateful obj = new BatchApexStateful ();
Database.executeBatch(obj);



//Queueable


public class QueueableApex implements Queueable {
    
    public void execute(QueueableContext qc){
        
        List<Account> accList = new List<Account>();
        for(Integer i=0;i<10;i++){
            Account acc = new Account();
            acc.Name='Test Account'+i;
            accList.add(acc);            
        }
        insert accList;       
        
    }

}



//apex-anon
QueueableApex obj = new QueueableApex();
System.enqueueJob(obj);


//Schedulable


public class SchedulableClass implements Schedulable {
    
    public void execute(SchedulableContext sc){
        
        List<Opportunity> oppList = [Select Id, Name, CloseDate, OwnerId FROM Opportunity where IsClosed=false AND CloseDate<TODAY];
        
        List<Task> taskList = new List<Task>();
        
        for(Opportunity opp : oppList){
            
            Task tsk = new Task();
            tsk.subject='Close this opp or change the close date';
            tsk.Priority='high';
            tsk.status='not started';
            tsk.OwnerId=opp.OwnerId;
            tsk.WhatId=opp.Id;
            taskList.add(tsk);    
        }
        insert taskList;
    }

}



//apex-anon
SchedulableClass obj = new SchedulableClass();
System.schedule('task for due opp', '0 25 16 16 3 ?', obj);


