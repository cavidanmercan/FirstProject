public class ContactTrigger2Handler {
 
public Static Boolean isFirstRun=true;

public static void handle (List<Contact> con2List){

if (isFirstRun){
    isFirstRun=false;


List<Contact> conList = new List<Contact>();

for(Contact each: con2List){
    if(each.Spouse__c!=null){
    
    Contact con = new Contact();

    con.Id=each.Spouse__c;

    con.Spouse__c=each.Id;

    conList.add(con);

    }
}

update conList;
}
}
}