//class oluşturduk


public class ContactCreator {

//Create a contact whenever you create an account with the account name
//use future method

    @future
    public static void createContact(String accJson){

    List<Account> accList = (List<Account>) json.deserialize(accJson, List<Account>.class);
    List<Contact> conList = new List<Contact>();

    for(Account acc : AccList){
        Contact con = new Contact(LastName=acc.Name);
        con.accountId = acc.id;
        conList.add(con);

    }

    insert conList;
}
}


//trigger oluşturduk

trigger AccTrigger on Account (after insert) {

    String accJson = json.serialize(trigger.new);
    ContactCreator.createContact(accJson);

}


//apex-anon

//serialize*deserialize

//1 record

Account acc = [Select id, name, industry from Account where industry != null limit 1];

System.debug(acc);

String jsonstr = json.serialize(acc);

System.debug(jsonstr);

Account jsonacc = (Account) json.deserialize(jsonstr, Account.class);

System.debug(jsonacc);


//List

List<Account> accList = [Select id, name, industry from Account where industry != null limit 2];

String jsonstr1=json.serialize(accList);

System.debug(jsonstr1);

List<Account> acList = (List<Account>) JSON.deserialize(jsonstr1, List<Account>.class);

System.debug(acList);
