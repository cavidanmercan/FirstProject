```java

SET6-1
List<String> colors = new List<String>();
    colors.add('White');
    colors.add('Black');
    colors.add('Orange');
    colors.add(1, 'Pink');
    colors.add(1, 'Red');
    colors.add(1, 'Green');

for(Integer i=0; i<colors.size(); i++) {
  System.debug('Colors : ' +  colors.get(i) ); 
} 

for(String each: colors) {
  System.debug('Colors : ' +  each ); 
}


SET6-2
List<String> colors = new List<String>{'White', 'Green', 'Red', 'Pink'};
           
String firstItem = colors.get(0);
colors.set(colors.size()-1, firstItem);

System.debug('List values now : ' + colors); 


SET6-3
List<String> names = new List<String>{'Jon Snow', 'John White', 'Andy Young',  'Avi Green', 'Jane Gray','Josh Davis'};
    
if (!names.contains('Jon Snow')) {
    names.add(4, 'Jon Snow');
} else {
  Integer IndexOfJS = names.indexOf('Jon Snow');
  names.remove(IndexOfJS);
  names.add(4, 'Jon Snow');
}

System.debug('New Names List : ' +names);


SET6-4
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

Integer count = 0;
for(String each : heroList){
   if (each=='Iron Man'){
    count++;  }
}
System.debug('The count of times Iron Man : ' + count);


SET6-5
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

List<Integer> IronManIndexList = new List<Integer>{};

for (Integer index = 0; index < heroList.size() ; index++){
    if (heroList.get(index) == 'Iron Man'){
        System.debug('Index of Iron Man: ' + index);
        IronManIndexList.add(index); 
    }
}

System.debug('Iron Man Index List is: ' + IronManIndexList);
System.debug('Iron Man Index List size is: ' + IronManIndexList.size());


````

```java

SET6-6 
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

while (heroList.contains('Iron Man')) {
  Integer indexOfIM = heroList.indexOf('Iron Man');
  heroList.remove(indexOfIM);
}

System.debug('New Hero List : ' + heroList);


SET6-7
Double[] prices = new Double[10];
        prices [0] = 00.99;
        prices [1] = 10.99;
        prices [2] = 20.99;
        prices [3] = 30.99;
        prices [4] = 40.99;
        prices [5] = 50.99;
        prices [6] = 60.99;
        prices [7] = 70.99;
        prices [8] = 80.99;
        prices [9] = 90.99;

Integer count = 0;
for (Double each : prices ) {
  if (each > 10 && each < 20 || each > 40 && each < 50) {
    count++;
  }
}
System.debug('The count of the number is between 10 and 20 or 40 and 50 : ' + count); 

Double sum  = 0;
for(Double each : prices ) {
    if(each>30){
        sum +=each;
    }
}
System.debug('Sum of the numbers greater than 30 : ' + sum ); 


SET6-8
String[] items = new String[10];
 items[0] = 'item1';
 items[1] = 'item2';
 items[2] = 'item3';
 items[3] = 'item4';
 items[4] = 'item5';
 items[5] = 'item6';
 items[6] = 'item7';
 items[7] = 'item8';
 items[8] = 'item9';
 items[9] = 'item10';

List<String> reverseditems = new List<String>();

for(Integer index = items.size()-1 ; index >= 0 ; index--){
    reverseditems.add(items.get(index)); 
}

System.debug('Reversed items :' + reverseditems); 


SET6-9
Boolean[] BooleanArray = new Boolean[10];
BooleanArray[0]=true;
BooleanArray[1]=true;
BooleanArray[2]=true;
BooleanArray[3]=true;
BooleanArray[4]=true;
BooleanArray[5]=false;
BooleanArray[6]=false;
BooleanArray[7]=false;
BooleanArray[8]=false;
BooleanArray[9]=false;

Integer count=0;

for(Boolean each : BooleanArray){
    if (each == true){
        count++;
    }
}
System.debug('Count of the number of true value :' + count);


````


```java

SET6-10
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

````