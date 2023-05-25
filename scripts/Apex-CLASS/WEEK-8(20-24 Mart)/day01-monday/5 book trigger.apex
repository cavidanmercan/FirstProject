/* Book objectinde description fieldi oluşturduk. trigger sonrası book name değiştirilirse eski name description da yazdı 

BOOK trigger a bu kısmı ekledik 
System.debug('Trigger.operationType value is : ' + Trigger.operationType); 

if(Trigger.isBefore && Trigger.isUpdate){
    
    for(Book__c each : Trigger.new) {

      Book__c oldBook = Trigger.oldMap.get(each.Id);
        // If the Book Name has changed 
      if(each.Name != oldBook.Name){
        each.Description__c = 'Old value : ' +  oldBook.Name ; 
      }

    }

  }


}
*/