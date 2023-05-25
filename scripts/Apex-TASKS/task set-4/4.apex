/*4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers */


   List<Long> numList=new List<Long>{10123000L,20445593L,39379530L,-1877389737L,-39837838L,-589879383L};

   Long sum=0;
for (Long each:numList){
    if(each>=0){
     sum+=each;
    }
}
System.debug(sum);



Integer countPos = 0;
Integer countNeg = 0;

for(Long each : numList){
    if(each>0){
        countPos ++ ;
    }else{
        countNeg ++ ;
    }
}

System.debug('Count of positive numbers is : ' + countPos);
System.debug('Count of negative numbers is : ' + countNeg);
   
   
    