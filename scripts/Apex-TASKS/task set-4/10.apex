/*10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users, and calculates the number of users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 */


Integer spentMore = 0;
List<Integer> spentAmount = new List<Integer>{13000, 50000, 4500, 20000, 7500, 9000, 55000, 2000};
for(Integer eachAmount : spentAmount){
    if(eachAmount>10000){
        spentMore++;
    }
}
System.debug('Number of users who spent more than $10000 is : ' + spentMore);
