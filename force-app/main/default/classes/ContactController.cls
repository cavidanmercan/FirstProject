public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static Contact getOneContact(){
       
        return [SELECT Id,Name From Contact LIMIT 1];

    }

    //! 14 haz mentör dersinde ekledik
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsWithTitle(){

        // List<Contact> conList =[Select Id, LastName, Title from Contact Where 
        //         Title in ('CEO','CFO')];

        // return conList;

        return [Select Id, LastName, Title from Contact Where 
                Title in ('CEO','CFO')];
    }


}