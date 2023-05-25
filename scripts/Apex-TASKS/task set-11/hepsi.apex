```java

SET10-1
String message = '  DML   iS reaLly CoOl   ';
System.debug(message.trim()); 
System.debug(message.normalizeSpace()); 

message = message.trim().normalizeSpace();
System.debug('Starts with DML: ' + message.startsWith('DML')) ; 
System.debug('Ends with cool: ' + message.endsWithIgnoreCase('cool')) ; 


SET10-2
String message = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';

List<String> messageList = message.split(' ');
System.debug(messageList);
for (Integer i = 0; i < messageList.size(); i++) {
  String each = messageList.get(i).toLowerCase().capitalize();
  messageList.set(i, each);
}
System.debug(messageList);

System.debug(String.join(messageList, ' '));

SET10-3
List <Lead> leadList = new List <Lead> ();

for (Integer i = 1 ; i <=10 ; i++){
    leadList.add(new Lead(FirstName = 'Test Lead FN ' + i, LastName = 'Test Lead LN ' + i, Company = 'Company ' + i));
 }
System.debug(leadList); 

insert leadList ; 

SET10-4
Lead newLead = new Lead (
    LastName = 'Lead Last Name APEX' , 
    Company  = 'Lead Company CYDEO') ; 
insert newLead;

Task newTask         = new Task();
newTask.WhoId        = newLead.Id ;
newTask.Priority     = 'High' ;
newTask.ActivityDate = Date.today().addDays(7);
insert newTask;

SET10-5
List<Opportunity> oppList = new List<Opportunity>();

for (Integer i = 1; i <= 10; i++){
  oppList.add(new Opportunity(
      Name      = 'Opp ' + i,
      CloseDate = Date.today().addDays(10),
      StageName = 'Prospecting',
      Amount    = (Math.random() * 100000)));
}
System.debug(oppList); 
insert oppList;

Account accName = new Account( Name = 'Parent of Cool Opps');
insert accName;


List<Opportunity> coolOppsList = new List<Opportunity>();
for (Opportunity each : oppList) {
  if (each.Amount > 60000) {
    each.AccountId = accName.Id;
    coolOppsList.add(each);
 }
}
System.debug(coolOppsList); 
update coolOppsList;

````



```java

SET10-6 


SET10-7

SET10-8

SET10-9

SET10-10


````



```java

````