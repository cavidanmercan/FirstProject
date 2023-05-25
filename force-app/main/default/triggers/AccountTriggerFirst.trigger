trigger AccountTriggerFirst on Account (after insert) {
     List<Contact> conList = new List<Contact>();

for(Account each : trigger.new){
    if(each.number_of_locations__c>0){
        for(Integer i=1;i<=each.number_of_locations__c;i++){
            Contact con =new Contact();
            con.LastName='contact'+i;
            con.AccountId=each.Id;
            conList.add(con);
        }
    }
}

insert conList;



}