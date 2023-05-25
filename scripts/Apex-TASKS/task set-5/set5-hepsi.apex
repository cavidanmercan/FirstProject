```java

SET5-1
List<Double> numbers = new List<Double>{59.34,72.98,90.34,37.73,22.44,29.40,92.50,18.98,91.79,32.00};

Double itemFirst = numbers.get(0); 
System.debug('First item value :' + itemFirst); 

Double itemLast = numbers.get(numbers.size()-1); 
System.debug('Last item value :' + itemLast); 

if (itemFirst==itemLast){
System.debug('End with what we started'); 
}
else{
System.debug('Different beginning and ending'); 
}

SET5-2
List<Long> numbers = new List<Long>{5900000,-7200000,9000000,-3700000,2200000,-2900000,9200000,-1800000,9100000,-3200000};

 for(Long eachNum : numbers){
    if(eachNum<0){
    continue;
    }System.debug(eachNum);
 }

SET5-3
List<Integer> numberList = new List<Integer>{1,2,3,4,5,16,27,35,42,54};

Integer sum = 0;

for(Integer eachNum : numberList){
    sum+=eachNum;
    if(sum>100){
        break;
    }
   System.debug(sum); 
}

SET5-4
List<Double> numbers = new List<Double>{9.34,7.98,8.34,3.73,22.44,29.40,92.50,58.98,91.79,82.00};

   for(Double eachNum : numbers){
    
    if(50.5<eachNum && eachNum<99.99){
        break;
    }
   System.debug(eachNum); 
}

SET5-5
List<Id> idNo = new List<Id>{
'a008d000009gULBAA1',
'a008d000009gULBAA2',
'a008d000009gULBAA3',
'a008d000009gULBAA4',
'a008d000009gULBAA5', 
'a008d000009gULBAA6',
'a008d000009gULBAA7',
'a008d000009gULBAA8',
'a008d000009gULBAA9',
'a008d000009gULBAA0'
 };

for(Integer i = 0; i < idNo.size(); i++){
     if (idNo.get(i)=='a008d000009gULBAA5'){
          break;
     }
    System.debug(idNo.get(i));
  }

for(Id eachId : idNo) {
     if(eachId=='a008d000009gULBAA5')
        break;
   System.debug(eachId);
} 

SET5-6 (?)
List<Integer> numberList = new List<Integer>{1,2,3,4,23,39,73,44,22,25};

Integer count = 0;
for(Integer eachNum : numberList){
   if (eachNum>5){
    count++;  }
}
System.debug(count);


for(Integer eachNum : numberList) {
    if(eachNum>5){
        System.debug(eachNum);
    }
}

for (Integer eachNum = 0; eachNum <= numberList.size(); eachNum++) {
  if (eachNum > 5) {
    System.debug(eachNum);
  }
}

SET5-7
List<Integer> numberList = new List<Integer>{39,73,44,22,25,55,1,2,3,4};

Integer count = 0;
for(Integer eachNum : numberList){
   if (eachNum>5){
    count++;  }
}
System.debug(count);

for(Integer eachNum : numberList){
   if (eachNum==2){
        break; 
    } 
     System.debug(eachNum); 
}

SET5-8
List<String> words = new List<String> {'Salesforce', 'Zoho CRM', 'HubSpot CRM', 'Pipedrive', 'Monday CRM'};


for (String eachWord : words) {
  if (eachWord == 'Salesforce') {
    continue;
  }
  System.debug(eachWord);
}

SET5-9
List<String> words = new List<String> {'Admin', 'Developer', 'Java SDET', 'Java Developer', 'Cybersecurity Analyst' ,'Data Science'};


for (String eachWord : words) {
  if (eachWord == 'Admin' ||eachWord == 'Developer' ) {
    continue;
  }
  System.debug(eachWord);
}

SET5-10
List<String> words = new List<String> {
    'Admin', 
    'Developer',
    'Java SDET', 
    'Back-End Developer',
    'Front-End Developer',
    'Full-Stack Java Developer',
    'Full-Stack Mobile Developer', 
    'Cybersecurity Analyst' ,
    'Data Science', 
    'AWS & DevOps Engineer'    
    };

Integer i = 0;
for (Integer count = 0; count < words.size(); count++) {
  if (words.get(count) != 'Admin' && words.get(count) != 'Developer') {
    i++;}
    continue;
}

System.debug(i);

````