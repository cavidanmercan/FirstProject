/**
just in case you need to cancel anything scheduled, run this anon-apex and it will cancel everything scheduled.
If the class is already scheduled to run , you can not make new changes and deploy. 

planlanmış herhangi bir şeyi iptal etmeniz gerekirse diye, bu anon-apex'i çalıştırın ve programlanmış her şeyi iptal edecektir.
Sınıfın çalışması zaten planlanmışsa, yeni değişiklikler yapamaz ve konuşlandıramazsınız.


you can also abort all scheduled jobs programmatically by running below code
If a class was scheduled to run, it can not be modified unless the scheduled job is deleted. 

 */



for(CronTrigger eachJob : [select id from CronTrigger] ){
   System.abortJob(eachJob.id);
}