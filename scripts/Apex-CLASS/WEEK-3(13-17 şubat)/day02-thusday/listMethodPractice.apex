/**
 Create a List of String that store 4 names 

 print out the size 
 print the item 3 

 print the item 1 

 print out every item using for loop 

 */

List<String> names = new List<String>(); 
 names.add('Hakan') ; 
 names.add('Nina') ; 
 names.add('Ali') ; 
 names.add('Ilaha') ; 

 System.debug(names) ; 

//  print out the size 
 System.debug('Item count in the list ' +  names.size()   ); 

//  print the item 3 
 System.debug(  names.get(2) ) ; 
//  print the item 1 
 System.debug(  names.get(0) ) ; 

 // store the value of number 2 item into a variable 
 // then print out 
  String item2 = names.get(1) ; 
  System.debug('item2 value is ' + item2) ; 

  System.debug(  names.get(0)  ); 
  System.debug(  names.get(1)  ); 
  System.debug(  names.get(2)  ); 
  System.debug(  names.get(3)  ); 

  //ya da aşağıdaki gibi aynı sonuç
  
   for (Integer index=0; index<4; index++)
  {System.debug (names.get(index));}

//index nolarını gösteriyor
  for (Integer index=0; index<4; index++)
  {System.debug (index);}

  for (Integer index=0; index<4; index++)
  {System.debug ('Index ' + index + ' is '+  names.get(index));} */

List<String> names = new List<String>(); 
 names.add('Hakan') ; 
 names.add('Nina') ; 
 names.add('Ali') ; 
 names.add('Ilaha') ; 
 names.add('Cristina') ; 
 names.add('Sean') ; 
 names.add('Marina'); 
 names.add('Suat'); 
 names.add('Hyder'); 

 //listeye ekleme yaptık ama çalışmadı  yukarıda <4 dediğimiz için formulu güncelliyoruz


  for (Integer index=0; index<names.size(); index++)
  {System.debug (names.get(index));}
  
    for (Integer index=0; index<names.size(); index++)
  {System.debug ('Index ' + index + ' is '+  names.get(index));}