public class LeadTriggerHandler {
  
 
  public static void handleBeforeInsert(List<Lead> leadLst) {
    
    for (Lead each : leadLst) {
        each.LastName = each.LastName.toUpperCase();
        if (each.FirstName != null) {
            each.FirstName = each.FirstName.toLowerCase().capitalize();
        }
        if (each.LeadSource == null) {
            each.LeadSource = 'Web';
        }
    }

  }


  /**
   * Static void method that accept list of list 
   * and create a task for each list with given details 
   * @param leadLst 
   * 
   */

  public static void handleAfterInsert(List<Lead> leadLst){

 
    List<Task> taskList = new List<Task>();

    for (Lead each : leadLst) {
      Task t = new Task();
      t.Subject = 'Send Apple Air tag to ' + each.LastName;
      t.ActivityDate = Date.today() + 2;
      t.WhoId = each.Id;
      taskList.add(t);
    }
    insert taskList;


  }


  /**
   * Write a method that accept List of Lead (from Trigger context variable)
   * and check if the lead status is Working - Contacted
   * prevent deletetion with error message 
   */

  public static void handleBeforeDelete(List<Lead> leadLst){


    for (Lead each : leadLst) {
        if (each.Status == 'Working - Contacted') {
            each.addError('Can not Delete a Lead in Working Status') ;
        }
    }

  }





}