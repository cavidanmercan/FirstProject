```java

Map<String, Integer> map1 = new Map<String, Integer>();
map1.put('John', 123000);
map1.put('Antony', 100000);
map1.put('Jimmy', 115000);
map1.put('James', 110000);
map1.put('Conor', 85000);
map1.put('Josh', 117000);
map1.put('Cory', 118000);
map1.put('Anderson',125000);
map1.put('Steven', 135000);
map1.put('Jalil', 145000);

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
    
````

List<Contact> conList =new List<Contact>() ;
for(Integer i=1; i<=5 ;i++) {
  conList.add(new Contact (LastName = 'Last Name '+i ));
}
System.debug(conList); 