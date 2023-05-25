public class AccountTriggerHandler {

  //AccountTrigger

  public static void handleBeforeInsert(List<Account> accList){
  for(Account each : accList) {
      if(each.AnnualRevenue>500000){ 
        each.Rating = 'Hot' ; 
      }
    }

  }
  

  public static void handleAfterInsert(List<Account> accList){

    List<Contact> contactList = new List<Contact>();
  
    for(Account each : accList) {
      if(each.AnnualRevenue>1000000){
      contactList.add(  new Contact(AccountId= each.Id, LastName='Snow' ) ); 
      }
    }
    insert contactList ; 

  }



  //AccountDeletePreventionTrigger
    public static void handleBeforeDelete(List<Account> accList, Map<Id, Account> accOldMap){

    List<Account> accWithOpps = [
    SELECT Id, Name
    FROM Account
    WHERE Id IN (SELECT AccountId FROM Opportunity) AND Id IN :accList
    ];

  for (Account each : accWithOpps) {

    Account oldAcc = accOldMap.get(each.Id);
    
    oldAcc.addError('CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!');
  }

}


}
