//bu kod burada çalışmıyor. Trigger kısmında çalışacak.  ders notu olarak buraya yazdım 
// dev console da yazdık en alttaki kısmı da anonymous a yazıp çalıştırdık 1 account oluştu 

trigger AccountTrigger on Account( before insert, after insert,
                                    before update, after update,
                                    before delete, after delete,
                                    after undelete) {

  System.debug('The Trigger event is : ' + Trigger.operationType);

  System.debug('Count of Record entered the Trigger ' +  Trigger.size );

  // Trigger.new Context variable , hold the List<Account> that entered the Trigger 
  System.debug('Trigger.new value is : ' + Trigger.new );
  // Trigger.new is literally List<Account> that entered the trigger
  //  for(Account each : Trigger.new) {
  //   System.debug('Current value :' + each.Name); }

  // Requirement 1 :  When the record is created ,
  // if the AnnualRevenue is greater than 500000, update the rating to Hot
  // BEFORE INSERT EVENT IS GOOD FOR THIS REQUIREMENT

  // Check if the current run of trigger is because of Before Insert Event


 /* önce basit halini yaptık if in içinde olacak şekilde - if in içinde for 
 if (Trigger.isBefore && Trigger.isInsert) {
    System.debug('I am inside Before Insert Code : ');
    // Trigger loop 
      for(Account each : Trigger.new) {
      // new requirement , simply update the rating to Hot
         each.Rating = 'Hot' ; 
         }
      }

      Bu halini super cool account ile denedik rating i hot olarak geldi
    */

  // sonra ayrıntılı halini yaptık - if in içinde for for un içinde if var 
    if (Trigger.isBefore && Trigger.isInsert) {
    System.debug('I am inside Before Insert Code : ');
    // Trigger loop 
    
      for(Account each : Trigger.new) {
      // if the AnnualRevenue is greater than 500000, update the rating to Hot
          if(each.AnnualRevenue>500000){ 
             each.Rating = 'Hot' ; //dev org da new account record oluşturduk annual rev 500 binden fazla yazdık rating i hot oldu
      }
    }

  }

  // Requirement 2 :  When the record is created ,
  // if the AnnualRevenue is greater than 1000000,
  // Create a Sample Contact for this Account
  // AFTER INSERT EVENT IS GOOD FOR THIS REQUIREMENT
  if (Trigger.isAfter && Trigger.isInsert) {
    System.debug('I am inside After Insert Code : ');    //bu kısmı perşembe yaptı
    
  }

  
}

//anon-apex 

Account a1 = new Account(Name = 'Acc from Apex'); 
 insert a1 ; 