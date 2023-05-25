public class OppTriggerHandler {
    
    public static void handleBeforeDelete(List<Opportunity> oppList){
    for (Opportunity each : oppList) {
        if (each.StageName == 'Closed Won') {
            each.addError('You can not delete Op in Closed Won stage') ;
      }
    }
  }




    public static void handleBeforeInsertUpdate(List<Opportunity> oppList) {
    for(Opportunity each : oppList) {
         if(each.Amount<0){
              each.addError('Amount can not be negative');
           }
        }
    }


    public static void handleBeforeInsert (List<Opportunity> oppList){
    for(Opportunity each : oppList) {
          if( each.Amount == null){
              each.Amount = 10000 ; 
            }
        }
    }


    public static void handleAfterInsert (List<Opportunity> oppList){

        List<Task> taskList = new List<Task>();
        for(Opportunity each : oppList) {
            if(each.Amount>500000){
            Task t = new Task(); 
                t.Subject = 'Follow up high value Task ' + each.Name ; 
                t.ActivityDate = Date.today() + 1 ; 
                t.WhatId    = each.Id ;
                taskList.add(t) ; 
            }
        }
        insert taskList ; 
    }
}