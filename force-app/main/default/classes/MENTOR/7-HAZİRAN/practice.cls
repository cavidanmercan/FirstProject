public with sharing class practice {

    @AuraEnabled(cacheable=true)
    public static List<List<Sobject>> accountsAndContacts(){

        List<List<Sobject>> searchList = new List<List<Sobject>>();

        searchList = [FIND 'com' IN ALL FIELDS RETURNING Account(Name,Website), Contact(Name,Email)];

        return searchList;

    }

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> oppLessThanAmount(Decimal amount){
    
    List<Opportunity> searchList = new List<Opportunity>();

    searchList = [Select id, name, amount FROM Opportunity WHERE Amount < : amount ];

    return searchList;
    
    
}
}