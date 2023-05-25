trigger AccountTriggerMentorClass on Account (before update, after update) {

        //when user updates account's billing street, change the related contacts mailing street
        
        if(trigger.isAfter && trigger.isUpdate){
        
            AccountTriggerMentorHandler.ChangeChildContact(trigger.new,trigger.oldMap);
        
        }
        }
