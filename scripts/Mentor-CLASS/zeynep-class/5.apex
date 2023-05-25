Q6- Write a program that can return the sum of odd numbers between 1 to 100



//sum of odd numbers between 1-100

Integer sum=0;

for(Integer i=1;i<100;i+=2){
    //sum=sum+i;
    sum+=i;
}

System.debug(sum);

//sum of even numbers between 1-100

Integer sum2=0;

for(Integer i=0;i<100;i+=2){
    sum2+=i;
}
System.debug(sum2);



Integer day=3;

//output should be Tuesday

String result= (day==1)? 'Sunday' : (day==2)? 'Monday' :
(day==3)? 'Tuesday' : (day==4)? 'Wednesday' : (day==5)? 'Thursday' : 
(day==6)? 'Friday' : 'Saturday';

System.debug(day+'.day of the week is '+result);