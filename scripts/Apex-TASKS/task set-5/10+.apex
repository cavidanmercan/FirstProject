/*10. Write a program that create a list of strings with 10 values and get the count of the items 
that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.*/

List<String> roleList = new List<String> {
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

Integer count = 0;

for(Integer i=0; i<roleList.size() ; i++) {
     //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
     String each = roleList.get(i) ; 
     if(each=='Admin' || each == 'Developer'){
         continue ; // skip the rest of the code and go to next iteration
     }
     count++; 
  }

System.debug(count);

//yada


for (Integer i = 0; i < roleList.size(); i++) {
  String each = roleList.get(i) ; 
  if (each != 'Admin' && each != 'Developer') {
    count++;}
    continue;
}

System.debug(count);

//yada

for (Integer i = 0; i < roleList.size(); i++) {
  //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
  String each = roleList.get(i); //Admin

  if (!(each == 'Admin' || each == 'Developer')) {
    count++;
  }
}

System.debug('count value is : ' + count);
