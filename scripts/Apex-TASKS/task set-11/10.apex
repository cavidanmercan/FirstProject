/*10. Create a List<Contact> and fill up with 5 Contacts with below fields 
   - LastName :  TestContact (1,2,3,4,5)
   - BirthDate:  1987 , 5 , (1,2,3,4,5)
   - insert these contacts into your org
   - Create a Map<ID,Contact> and fill it up with 
     - ID of each Contact in the list as Key
     - each Contact itself as value 
   - Loop through(Iterate over) the Map keys 
     - print out the each Key and Value 
     - print out the Contact  lastName value*/


List<Contact> contactList = new List<Contact>();
/*contactList.add(new Contact(LastName = 'TestContact 1', Birthdate = Date.newInstance(1987, 5, 1)));
contactList.add(new Contact(LastName = 'TestContact 2', Birthdate = Date.newInstance(1987, 5, 2)));
contactList.add(new Contact(LastName = 'TestContact 3', Birthdate = Date.newInstance(1987, 5, 3)));
contactList.add(new Contact(LastName = 'TestContact 4', Birthdate = Date.newInstance(1987, 5, 4)));
contactList.add(new Contact(LastName = 'TestContact 5', Birthdate = Date.newInstance(1987, 5, 5)));*/
 
//kısayol
for(Integer i=1; i<=5 ;i++) {
  contactList.add(new Contact (LastName = 'TestContact '+i, Birthdate = Date.newInstance(1987, 5, i) ));
}
System.debug(contactList); 


insert contactList;

Map<ID, Contact> contactMap = new Map<ID, Contact>();
for(Contact eachContact : contactList) {
    contactMap.put(eachContact.Id, eachContact);
}

for(Id eachKey : contactMap.keySet()) {
    System.debug(eachKey + ':' + contactMap.get(eachKey).LastName); 
    System.debug(contactMap.get(eachKey).LastName); 
  }


