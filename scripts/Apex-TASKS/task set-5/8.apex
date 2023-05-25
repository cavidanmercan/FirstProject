/*8. Write a program that create a list of strings and print the values that are not equal to "Salesforce", 
using a for loop and the continue keyword.*/

List<String> words = new List<String> { 'Zoho CRM', 'HubSpot CRM','Salesforce', 'Pipedrive', 'Monday CRM'};


for (String eachWord : words) {
  if (eachWord == 'Salesforce') {
    continue;
  }
  System.debug(eachWord);
}
