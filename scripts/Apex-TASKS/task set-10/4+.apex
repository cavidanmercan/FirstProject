/*4. Create a Lead with required Fields filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fields for this task
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now */



//akbar 
Lead myLead = new Lead(LastName='Skywalker', Company ='Galactic Empire');
System.debug('ld value before insert is : ' + myLead); 
insert myLead ; 
System.debug('ld value After insert is : ' + myLead); 

Task t1         = new Task(); 
t1.WhoId        = myLead.Id ; //task daki name fieldi (yeni task deyince search contacts, leads veya case den sonra onlara bağlı task oluştur deyince name kısmında search lead çıkıyor), whatıd de task daki related to fieldi (search accounts)
t1.Priority     = 'High' ; 
t1.ActivityDate = Date.today() + 7 ; // ya da Date.today().addDays(7);
t1.Subject      = 'Task for Lead from Apex' ;  
// insert this task into Salesforce 
insert t1 ; 