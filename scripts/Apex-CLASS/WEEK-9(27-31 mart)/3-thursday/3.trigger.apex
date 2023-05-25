Account parentAcc = Trigger.newMap.get(each.AccountId);
    each.phone =  parentAcc.phone ; 
    //each.Phone = Trigger.newMap(each.AccountId).Phone  //variable belirlemeden tek seferde böyle yazılır



//akbar discor da yazmış-old u çekmenin formülünü yazmış
//As we stressed in previous class, new value and old value , below is the magic formula

    for(sObjectType each : Trigger.new) {
       
       sObjectType eachOld =  Trigger.oldMap.get(each.Id) ; 
        // do more stuff here
    }



Trigger.new ve Trigger.old  list tir  
Trigger.newMap ve Trigger.oldMap   map tir 
ıd lazımsa  map kullanırız key-ıd
list te sadece value vardır 

//zeynep
Map returns Key->Id and Value->Account, if you provide key in get method you get value, here ve provide Id and get Account object
Harita, Key->Id ve Value->Account döndürür, get yönteminde anahtar sağlarsanız değer alırsınız, burada Id sağlar ve Account nesnesini alırsınız.