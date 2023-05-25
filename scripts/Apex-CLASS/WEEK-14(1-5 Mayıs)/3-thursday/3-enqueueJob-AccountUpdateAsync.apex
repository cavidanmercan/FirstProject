List<Account> myList = [SELECT Id, Name, Description
                        FROM Account
                        WHERE Name LIKE 'Cool%'];

System.debug('Running Apex - anon  Code'); 



AccountUpdateAsync q = new AccountUpdateAsync('From queueable job' ,  myList); 
System.enqueueJob(q); 



//TaskAfterAccountUpdate bunu AccountUpdateAsync class a ekledik kuyruğa alındı 
//TaskAfterAccountUpdate classını apex anon a yazmıyoruz hangi class ın kuyruğunda ise onu yazıyoruz buraya 
//en yukarıdaki class hangisi ise apex e onu yazıyoruz 

// TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate(); 
// System.enqueueJob(tq); 