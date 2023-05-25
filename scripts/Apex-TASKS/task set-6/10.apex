/*10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5*/


Integer[] numbers = new Integer[10];
numbers[0] = 5;
numbers[1] = 10;
numbers[2] = 15;
numbers[3] = 20;
numbers[4] = 25;
numbers[5] = 30;
numbers[6] = 35;
numbers[7] = 40;
numbers[8] = 45;
numbers[9] = 50;

if (numbers.contains(5) && numbers.contains(10)) {
  System.debug('Ideal numbers');
} else if (numbers.contains(10)) {
  System.debug('Good numbers');
} else if (numbers.contains(5)) {
  System.debug('Ok numbers');
} else {
  System.debug('Not so Good numbers');
}