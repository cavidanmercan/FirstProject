trigger AccountTrigger on Account (before insert, after insert,
                                   before update, after update, 
                                   before delete, after delete,
                                   after undelete) {
    
    
     System.debug('Hello from Trigger');
                                       
                                       
}


Account a1 = new Account(Name = 'Acc from Apex'); 
 insert a1 ; 
 a1.Name = 'Account_Inserted_Updated_Deleted_Undeleted-1'; 
 update a1 ; 
 delete a1 ; 
 undelete a1 ;  


trigger AccountTrigger on Account (before insert, after insert,
                                   before update, after update, 
                                   before delete, after delete,
                                   after undelete) {
    
     // Trigger context varible : OperationType to get what event 
     // caused this code to get excecuted 
     System.debug('Trigger event is : ' +  Trigger.operationType    );
     System.debug('Hello from Trigger');
                                       
                                       
}


//örnek2

trigger ContactTrigger on Contact (before insert) {

    // in order to find out what kind of event triggered this code
    // we can use Trigger context variable called operationType
    // Trigger.operationType
    
    System.debug('This code ran because of this event ' + Trigger.operationType);
    System.debug('Hello from Contact Trigger');
    
}

 Contact c1 = new Contact(LastName='ABC'); 
insert c1 ; 


trigger ContactTrigger on Contact (before insert, after insert,
                                   before update, after update, 
                                   before delete, after delete,
                                   after undelete) {
    

    // in order to find out what kind of event triggered this code
    // we can use Trigger context variable called operationType
    // Trigger.operationType
    
    System.debug('This code ran because of this event ' + Trigger.operationType);
    System.debug('Hello from Contact Trigger');
    
}

Contact c1 = new Contact(LastName='ABC');
insert c1;
c1.FirstName = 'Jon';
update c1;
delete c1;
undelete c1;
