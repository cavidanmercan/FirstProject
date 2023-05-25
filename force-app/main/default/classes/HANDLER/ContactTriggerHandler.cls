public class ContactTriggerHandler {

    public static void handleAfterInsert(List<Contact> conList){
    System.debug('Running awesome after insert logic here'); 
        List<Book__c> bookList = new List<Book__c>(); 
        for(Contact each : conList) {
            if(each.Level__c == 'Primary'){
                bookList.add(  new Book__c(Name = 'Book1 '+each.LastName , Contact__c = each.Id   )   ); 
                bookList.add(  new Book__c(Name = 'Book2 '+each.LastName , Contact__c = each.Id   )   ); 
                bookList.add(  new Book__c(Name = 'Book3 '+each.LastName , Contact__c = each.Id   )   ); 
            }
        }
        insert bookList ; 
    }

}

