//1
//Create a program to write the even numbers from 10 to 20
//both included, except 16, in 4 different ways:
//Incrementing 2 in each step (use "continue" to skip 16)
//Incrementing 1 in each step (use "continue")
//With an endless loop (using "break" & "continue")

//Create a program to write the even numbers from 10 to 20
//both included, except 16, in 4 different ways:

//1-Incrementing 2 in each step (use "continue" to skip 16)
for(Integer i=10;i<=20;i+=2){
    if(i==16)
        continue;
    System.debug(i); 
}

System.debug('--------------------'); 

//2-Incrementing 1 in each step (use "continue")
for(Integer i=10;i<=20;i++){
    if(Math.mod(i,2)==0){   
        if(i==16)
            continue;
        System.debug(i); 
}}

System.debug('--------------------');

//3-use regular for loop
for(Integer i=10;i<=20;i+=2){
    if(i!=16)
    System.debug(i); 
}

System.debug('--------------------');

//4-With an endless loop (using "break" & "continue")

for (Integer i = 10; ; i += 2)
        {
            if (i == 16)
            {
                continue;
            }
            if (i > 20)
            {
                break;
            }
            System.debug(i);
        }



//2

//write a program that can multiply each number by 2
//ex: list = [1,2,3,4,5];

// you can not use for each loop try and see!!!! (value lerin değerlerini değiştirip yazdırmak istediğimizde for each loop kullanılamıyor)
List<Integer> list1=new List<Integer> {1,2,3,4,5};


for(Integer each : list1) {
      
        each*=2;
    
}

System.debug(list1); 


//for loop



for(Integer i=0;i<list1.size();i++){

        list1[i]*=2;

    }

System.debug(list1); 





//3
//find the factorial of any given number
//5!=5*4*3*2*1
//4!=4*3*2*1


/*Integer num=5;
Integer factorial=1;
for(Integer i=1;i<=num;i++){
    factorial*=i;
}

System.debug(num+'! = '+factorial); */

//benim yaptığım versiyonda 
Integer num=5;
Integer result=1;
Integer factoriel=1;

for(Integer i=1; i<=num ;i++) {
    result*=i;
       
}
System.debug('i value is : ' + result); 

for(Integer i=num; i>=1 ;i--) {
    factorial*=i;    
}
System.debug('result value is : ' + factorial); 


//4

//multiply two positive numbers without using *

Integer num1 = 10, num2= 6;
Integer sum=0;
if(num1>=0&&num2>=0){
    for(Integer i=1;i<=num1;i++){
        sum+=num2;
    }
}
System.debug(sum);