/*Declare 3 Integer variavles and initialize their values. 
Write a code to print out the largest number by comparing them with each other. */

Integer num1=7, num2=17, num3=37;

 
if (num1>num2 && num1>num3){
    System.debug(num1 + ' is the largest number');
}else if (num2>num3) {
   System.debug(num2 + ' is the largest number');
}else {
    System.debug(num3 + ' is the largest number');
}

