/*Decimal price1 = 699.99 , price2 = 799.99 ,  price3 = 1100.99 ;  
Boolean result = (price1 > price2)  &&  (price2< price3) ;
System.debug('Result: ' + result);



Integer count=10;
while (count>0)
{System.debug(count); 
    count-=1;}

Integer count=6;
do 
{System.debug(count); 
    count-=1;}
while (count>0);*/

List<Integer> numberList = new List<Integer>(); 
 
 for(Integer count=1 ; count<=5  ; count++ ){
    numberList.add(count); 
 }



for (Integer each: numberList)
{System.debug(each) ;}