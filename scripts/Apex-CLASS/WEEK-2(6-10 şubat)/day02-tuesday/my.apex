
/*Integer starCount = 0 ; 

  while( starCount <= 6)
    {System.debug(starCount + ' star ranger') ; 
    starCount++ ; }


Integer starCount = 0 ; 
do 
    {System.debug(starCount + ' star ranger') ; 
        starCount++ ; }
    while(starCount <=6); */

/*Integer starCount = 0 ; // if li halini yaptı
while( starCount <= 6){

    if(starCount==0)
       {System.debug('Almost There to 1 star');}
        else
        {System.debug(starCount + ' star ranger') ; }
    starCount++ ; 
 }*/

/*//bu da farklı versiyon
Integer starCount = 0 ;
 while(starCount < 7){
    if(starCount==0){
        System.debug('Almost there to 1 star');
    }else if(starCount==6){
        System.debug('All star ranger');
    }else{
        System.debug(starCount + ' star ranger');
    }
starCount++ ;}

Integer muffin = 20;
while(muffin >=0 ){
    System.debug('muffin count is ' + muffin);
    muffin -=2;} */

/*Integer muffin = 20;
while(muffin >=0 ){
    if(muffin >10 )
         {System.debug('muffin count is ' + muffin);}
    else 
         {System.debug('muffin count is ' 
            + muffin + ' I am getting full');}
muffin -=2;}*/

/*//if li oluşturacağız sonra onu while koyacağız
Integer muffin = 20;
if(muffin >10 )
         {System.debug('first half : muffin count is ' + muffin);
         muffin -=3;}
    else 
         {System.debug('second half : muffin count is ' + muffin);
            muffin -=2;}*/

/*Integer muffin = 20;
while(muffin >=0 ){  
    if(muffin >10 )
         {System.debug('first half : muffin count is ' + muffin);
         muffin -=3;}
    else 
         {System.debug('second half : muffin count is ' + muffin);
            muffin -=2;}
}    */

//FOR LOOP


/*Integer count=1;
while(count<10)
{System.debug (count);
count++;}


for (Integer count=1; count<10; count++)
{System.debug (count);}

for (Integer level=0; level<=20; level+= 2 )
{System.debug (level);}*/

/*for (Integer level=10; level<=20; level+= 2 )
{System.debug (level);}*/


/*//FOR LOOP2
 for(Integer count=10 ; count>0 ; count--){
    System.debug(count) ; 
 }*/


/*for (Integer count=100; count>=0; count-=10 )
{System.debug (count);} */

/*//FOR LOOP3
for(Integer count=1 ; count<=10 ; count++ ){
    System.debug(count + ' X 5 = ' +  (count*5)  ); 
}*/



 /*Integer num = 8 ; 
 Integer count = 9 ; 
  System.debug(count + ' X ' + num + ' = ' + ( count*num )   );*/



 /*Integer num = 9 ; 
for(Integer count=1 ; count<=10 ; count++ ){
    System.debug(count + ' X ' + num + ' = ' + (count*num)  ); 
}*/



 /*Integer luckyNumber = 50 ; 
for(Integer count=1 ; count<=10 ; count ++){
  
  System.debug( luckyNumber +  ' + ' 
                +  count + ' = ' 
                + (luckyNumber+count)   ) ; 
}*/

//FOR LOOP4
 Integer sum = 0 ; 

for(Integer count=1 ; count<=10 ; count++){

    System.debug('Iteration number ' + count); 
    //sum = sum + count ; 
    sum += count ; 
    System.debug('Sum : ' + sum ); 
}

System.debug('Sum of 1 to 10 is ' + sum ) ; 