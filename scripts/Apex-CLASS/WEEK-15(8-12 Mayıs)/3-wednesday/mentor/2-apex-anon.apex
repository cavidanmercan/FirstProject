BatchApex obj = new BatchApex();
Database.executeBatch(obj,100);


UpdateContactAddress obj = new UpdateContactAddress ();
Database.executeBatch(obj);


BatchApexStateful obj = new BatchApexStateful ();
Database.executeBatch(obj);


QueueableApex obj = new QueueableApex();
System.enqueueJob(obj);



SchedulableClass obj = new SchedulableClass();
System.schedule('task for due opp', '0 25 16 16 3 ?', obj);


