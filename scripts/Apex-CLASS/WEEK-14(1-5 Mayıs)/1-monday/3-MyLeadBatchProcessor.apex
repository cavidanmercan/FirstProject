
// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch Inc',true, 1000); 
// System.debug('myLeads.size()  value is : ' + myLeads.size() );



MyLeadBatchProcessor mlp = new MyLeadBatchProcessor(); 
// use executeBatch method of Database class 
// to provide instance of Batchable 
// (object from Class that implemented Database.Batchable) 
// and provide batch size, if not provided default is 200 
// so it can fill up the `records` variable of execute method with that many records per batch
// each batch get it's own governor limit 
Database.executeBatch(mlp, 200); 


// delete [Select Id From Lead WHERE CreatedDate = TODAY] ;


/**
Gather All Data (start)
Provide Logic for each Batch (execute)
Do something when all finish (finish)
 */