/*6. Write a program that create List of Integer with 10 items 
   get the count of the items more than 5 (try for loop and for each loop)
    and print out at the end */

List<Integer> numberList = new List<Integer>{1,2,3,4,23,39,73,44,22,25};
Integer count = 0;



for(Integer eachNum : numberList){
   if (eachNum>5){
    count++;  }
}
System.debug(count);



for(Integer eachNum : numberList) {
    if(eachNum>5){
        System.debug(eachNum);
    }
}


for (Integer i = 0; i < numberList.size(); i++) {
  if (numberList.get(i)> 5) {
    count++; 
    System.debug( 'ındex ' + i);
  }
}

