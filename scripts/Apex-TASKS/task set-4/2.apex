/*2. Write a program that store the even numbers from 1 to 20 into List of Integer

  then write an apex code to get the sum of all items in the list. */



List<Integer> iNumbers=new List<Integer>();
  
Integer sum = 0;
for (Integer i=0; i<=20; i+=2)
{iNumbers.add(i);
sum+=i;}

System.debug('The sum of all items : ' + sum);


  
  