//Just like @future methods
//we can put a code into Class that implements Queueable interface 
//and provide detail of execute
//in order to run the code; 
//we use System.enqueueJob(queueable);

//!AccountUpdateAsync class



System.debug('Running apex-anon'); 

// List<Account> myAccList = AccountController.getAccountWithAnnualRevenue(); 


AccountUpdateAsync q = new AccountUpdateAsync('AWESOME'); 
System.enqueueJob( q ); 
