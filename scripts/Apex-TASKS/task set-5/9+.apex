/*9. Write a program that create a list of strings and print the values that are not equal to "Admin" or "Developer" 
using a for loop and the continue keyword.*/

List<String> roleList = new List<String> {'Admin', 'Developer', 'Java SDET', 'Java Developer', 'Cybersecurity Analyst' ,'Data Science'};

//for loop
 for(Integer i=0; i<roleList.size() ; i++) {

    if( roleList.get(i)=='Admin'  ||  roleList.get(i)=='Developer' ){
        continue ; 
    }

    System.debug('Value at index #'+ i +' is :' + roleList.get(i) );

 }

// for loop alternatif
  for(Integer i=0; i<roleList.size() ; i++) {

    // create a variable to store each item you are looping through 
    String each = roleList.get(i) ; 

    if( each =='Admin'  ||  each=='Developer' ){
        continue ; 
    }

    System.debug('Value at index #'+ i +' is :' + each );

 }
 
//for each loop
for (String each : roleList) {
  if (each == 'Admin' ||each == 'Developer' ) {
    continue;
  }
  System.debug(each);
}
