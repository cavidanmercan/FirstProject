trigger ContactTrigger on Contact (after insert, after update, after delete, after undelete) {
     
    Set<Id> accountIds = new Set<Id>();
     
    if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
        for(Contact con:trigger.new){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
    }
     
    if(trigger.isUpdate || trigger.isDelete){
        for(Contact con:trigger.old){
            if(con.AccountId != null){
                accountIds.add(con.AccountId);
            }
        }
    }
     
    if(!accountIds.isEmpty()){
        List<Account> accList = [SELECT Id, Number_of_Contacts__c, (SELECT Id FROM Contacts) 
                                 FROM Account WHERE Id IN : accountIds];
        if(!accList.isEmpty()){
            List<Account> updateAccList = new List<Account>();
            for(Account acc:accList){
                Account objAcc = new Account(Id = acc.Id, Number_of_Contacts__c = acc.Contacts.size());
                updateAccList.add(objAcc);
            }
            if(!updateAccList.isEmpty()){
                update updateAccList;
            }
        }
    }
}












trigger RollupAccount on Contact (after insert, after update, after delete, after undelete) {
    set<id> clsId= new set<id>();
    if(Trigger.isInsert||Trigger.isUndelete){
        if(Trigger.new !=null){
            for(Contact std : Trigger.new){
                if(std.AccountId !=null){
                    clsId.add(std.AccountId);
                }
            }
        }
    }
    if(Trigger.isDelete){
        if(Trigger.old!=null){
            for(Contact std : Trigger.old){
                clsId.add(std.AccountId);
            }
        }
    }
    
    if(Trigger.isUpdate){
        for(Contact std : Trigger.new){
            if(std.AccountId != Trigger.oldMap.get(std.id).AccountId){
                if(Trigger.oldMap.get(std.id).AccountId !=null){
                    clsId.add(Trigger.oldMap.get(std.id).AccountId);
                }
                if(std.AccountId!=null){
                    clsId.add(std.AccountId);
                }
            }
        }
    }
    system.debug('clsId>'+clsId);
    Map<String,Integer> mapOfAccIdAndNoOfStd = new Map<String,Integer>();
    List<AggregateResult> totalStudents = [Select count(Id), AccountId from Contact where AccountId=:clsId Group By AccountID];
    if(totalStudents.size()>0){
        for(AggregateResult a: totalStudents){
            String clsIds = (String)a.get('AccountId');
            Integer totalStd = totalStudents.size();
            mapOfAccIdAndNoOfStd.put(clsIds,totalStd);
        }
    }
    List<Account> claListToUpdate = [SELECT Id, Number_of_Contacts__c FROM Account Where Id=:clsId];
    
    if(claListToUpdate.size()>0){
        for(Account c : claListToUpdate){
            if(mapOfAccIdAndNoOfStd.containsKey(c.Id)){
                c.Number_of_Contacts__c = mapOfAccIdAndNoOfStd.get(c.Id);
            }
            else{
                c.Number_of_Contacts__c =null;
            }
        }
    }
    
    if(claListToUpdate.size()>0){
        update claListToUpdate;
    }
}