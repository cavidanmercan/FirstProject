// 1. soru
  Map<String, String> employeeMap = new Map<String,String>();
        employeeMap.put('Ddene', 'F');
        employeeMap.put('Winfred', 'M');
        employeeMap.put('Jereme', 'M');
        employeeMap.put('Glad', 'F');
        employeeMap.put('Desirae', 'F');
        employeeMap.put('Kakalina', 'f');
        employeeMap.put('Bertrando', 'M');
        employeeMap.put('Ajay', 'F');
        employeeMap.put('Brigitte', 'F');
        employeeMap.put('Derk', 'm');
        employeeMap.put('Orlando', 'M');
        employeeMap.put('Selle', 'f');
        employeeMap.put('Marika', 'F');

      //  1. Update the 'M' to Male and 'F' to Female

for (String each : employeeMap.keySet()) {
  if (employeeMap.get(each).equalsIgnoreCase('F')) {
    employeeMap.put(each, 'Female');
  } else if (employeeMap.get(each).equalsIgnoreCase('M')) {
    employeeMap.put(each, 'Male');
  }
}

System.debug(employeeMap);


// 2. soru

Map<String, Integer> map1 = new Map<String, Integer>();
map1.put('John', 123000);
map1.put('Antony', 100000);
map1.put('Jimmy', 115000);
map1.put('Jalil', 145000);
map1.put('James', 110000);
map1.put('Conor', 85000);
map1.put('Josh', 117000);
map1.put('Cory', 118000);
map1.put('Anderson',125000);
map1.put('Steven', 135000);

//  1 who has the maximum and minimum salary?

Integer max=0;
Integer min=1000000;


for(Integer eachValue : map1.values()) {
    if (eachValue>max){
        max=eachValue;
    }
    if (eachValue<min){
        min=eachValue;
    } 
}

for(String eachKey : map1.keySet()) {
    if(map1.get(eachKey)==min)
    System.debug(eachKey+ ' gets the min salary :' + map1.get(eachKey)   );

    if(map1.get(eachKey)==max)
    System.debug(eachKey+ ' gets the max salary :' + map1.get(eachKey)   );
}



//3. soru

//dev org da önce Product object oluşturduk.

// Suppose you have a custom object called "Product__c" which has two fields: 
// "Name" and "Price__c". You also have a Map<String, Decimal> called "priceMap" 
// that contains the names and prices of various products.

// Write an Apex code snippet to loop through the entries in the priceMap, 
// and for each entry, create a new Product__c record with the corresponding 
// name and price, and insert it into Salesforce.



Map<String,Decimal> priceMap = new Map<String,Decimal>();
    priceMap.put('laptop',900);
    priceMap.put('phone',1200);
    priceMap.put('airpod',150);

    List<Product__c> proList = new List<Product__c>(); 

for (String eachKey : priceMap.keySet()) {
    //Account acc = new Account();
    product__c pro = new product__c();

    pro.name=eachKey;
    pro.Price__c = priceMap.get(eachKey);
    proList.add(pro);
}    

insert proList; 


// 4. soru

Map<String,Decimal> productMap = new Map<String,Decimal>();
productMap.put('Apple Macbook', 1500);
productMap.put('Samsung S60', 700);
productMap.put('apple Airpod', 300);
productMap.put('Apple Iphone 13', 1000);
productMap.put('Samsung Galaxy', 800);

//You have a map of products and you should increase the prices by10%
//if they include 'Apple'
//print out the new priceMap

for(String eachProduct :productMap.keySet()) {
    if( eachProduct.containsIgnoreCase('apple')) {
        productMap.put(eachProduct,productMap.get(eachProduct)*1.1);


    }
}
  System.debug('ProductMap value is : ' + ProductMap);




  //5. soru

//create 5 contacts with LastName 'Brown1', 'Brown2'......'Brown5'
//create a new Account with Name='Test Account'
//relate the account with contacts while creating them
//insert them


List<Contact> conList = new List<Contact>();
Account acc = new Account(name='Test Account');
insert acc;

for (Integer i = 1; i <= 5; i++) {
    contact con = new contact ();
   con.LastName= 'Brown'+i;
   con.AccountId=acc.Id;
   conList.add(con);
    
}
insert conList;



//homework

/*Create 5 new Accounts with Name Acc1, Acc2....Acc5
Insert them 
Add the accounts to a Map<Id,Account>
print the new map
Create a new Account List and copy the old account list
update the accounts' Industry as 'Technology'
update accounts with DML
create a new map and add the updated accounts
print out the map again */


List<Account> AccList = new List<Account>();
for(Integer i=1; i<=5 ;i++) {
  AccList.add(new Account (Name = 'Acc'+i));
}
System.debug('Acc List : ' + AccList);

insert AccList;


Map<Id, Account> AccMap = new Map<Id, Account>();
AccMap.putAll(AccList);

System.debug('Account Map : ' + AccMap);


List<Account> newAccList = new List<Account>(AccList);
System.debug('New Acc List : ' + newAccList);

for (Account each : newAccList){
    each.Industry = 'Technology';
}

update newAccList;

Map<Id, Account> newAccMap = new Map<Id, Account>();
  newAccMap.putAll(newAccList);

System.debug('New Account Map : ' + newAccMap);




