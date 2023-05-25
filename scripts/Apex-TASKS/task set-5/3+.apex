/*3. Write a program that store List of Integer with 10 items and try to get the sum of values, 
 break out of the loop if the sum is greater than 100.*/ 

List<Integer> numberList = new List<Integer>{10,20,30,40,50,16,27,35,42,54};

Integer sum = 0;

for(Integer eachNum : numberList){
    sum+=eachNum;
    if(sum>100){
        break;
    }
   System.debug(sum); 
}

