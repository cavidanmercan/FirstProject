//break loop
/* List<Integer> numList = new List<Integer>{7,12,15, 10, 17, 100, 4};

for(Integer eachNum : numList){
 
  System.debug(eachNum);
  if(eachNum == 10){
    System.debug('YAY');
    break ;
  }
}

//skip loop

for(Integer count=1; count<=10; count++) {
    
    if (count!=5){
    System.debug( count);
    }

 }


 for(Integer count=1 ;  count<=10 ; count++) {
    
    if(count==5){
        System.debug('skipping the rest in this iteration') ; 
        continue ; 
    }
    
    System.debug('count value ' + count);

 }


/*break stops the loop entirely and continue just skips over the element you want and continues the loop!
break, döngüyü tamamen durdurur ve devam etmek istediğiniz öğeyi atlar ve döngüye devam eder!

break : it stop statement ,  continue : it skip whatever you give the value , it doesnt print out
break : ifadeyi durdurur , devam : değeri ne verirseniz onu atlar , çıktı almaz */


/*List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};

for(Integer eachNum  : numLst  ){

    if(eachNum <= 10){
        System.debug(eachNum); 
    }

}  //10 dan küçükler 

//yada bu şekilde ikisi de aynı sonucu veriyor (3. ders 2 sa 30 dk gibi bu aşağıya bir bak)


for (Integer eachNum : numLst) {
  if (eachNum > 10) {
    continue;
  }

  System.debug(eachNum);
}*/




//list methods-GET

/* List<Integer> numLst = new List<Integer>{ 19, 1, 23, 7, 11, 99 };

 // get the element at certain index using  get method 

// get the first element and store it in a variable 
Integer item1 = numLst.get(0) ; 
System.debug('first item value ' + item1) ;  
System.debug('second item value ' + numLst.get(1)) ; 
System.debug(  numLst.get(2)  ); 
System.debug(  numLst.get(3)  ); 
System.debug(  numLst.get(4)  ); 
System.debug(  numLst.get(5)  ); 

System.debug(  numLst  ); */

// iterate over all the elements in the loop without for each loop 

/*for(Integer index=0  ; index<6 ; index++ ){
    System.debug(   numLst.get(index)   ); 
}*/

//ya da aşağıdaki gibi yapılabilir aynı şey
 /* System.debug(  numLst.get(0)  ); 
  System.debug(  numLst.get(1)  ); 
  System.debug(  numLst.get(2)  ); 
  System.debug(  numLst.get(3)  ); 
  System.debug(  numLst.get(4)  ); 
  System.debug(  numLst.get(5)  ); 


  //method practice

/*List<String> names = new List<String>(); 
 names.add('Hakan') ; 
 names.add('Nina') ; 
 names.add('Ali') ; 
 names.add('Ilaha') ; */

  /*System.debug(names) ; 

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
  System.debug(  names.get(3)  ); */

//ya da aşağıdaki gibi aynı sonuç
  
   /* for (Integer index=0; index<4; index++)
  {System.debug (names.get(index));}*/

//index nolarını gösteriyor
  /* for (Integer index=0; index<4; index++)
  {System.debug (index);}

  for (Integer index=0; index<4; index++)
  {System.debug ('Index ' + index + ' is '+  names.get(index));} */

 /*List<String> names = new List<String>(); 
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
  {System.debug ('Index ' + index + ' is '+  names.get(index));}  */


  //ListLoopPractice

List<Decimal> numbers = new List<Decimal>{
  1.11,
  22.22,
  100.99,
  3.33,
  14.44,
  200.00,
  12.50,
  8.88,
  9.99,
  50.00
};

/*Integer indexOfLastItem = numbers.size() -1 ; 
System.debug('index Of Last Item ' + indexOfLastItem); 

System.debug('last Item value '+  numbers.get(indexOfLastItem) ); */


/*for(Integer index=0 ; index< numbers.size() ;  index++  ){
    // item 3   or  item 7 
    if(index==2 || index==6){
        continue ; 
    }

    System.debug(  numbers.get(index)  ) ; 
 
}

//yukardakinin süslü hali
for(Integer index=0 ; index< numbers.size() ;  index++  ){
    // item 3   or  item 7 
    if(index==2 || index==6){
        continue ; 
    }

    System.debug('Index #' +index + ' : ' + numbers.get(index)  ) ; 

}*/




//100 den fazla olan veriye rastlarsan dur
 for(Decimal eachNum  : numbers  ){

    if(eachNum>100){
        break ; 
    }

    System.debug(eachNum); 

 }













