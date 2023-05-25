/**
 *
 * Given a String with a sentence with one or more words
 * Make each words title case : first letter uppercase, the rest lowercase
 *
 * for example : apex IS gReAt ==>> Apex Is Great
 *
 */

String name = ' apex IS     gReAt  ';
System.debug('name value is : ' + name);

// first normalize the space so we do not have any extra spaces other than needed
// name = name.normalizeSpace();
// System.debug('name value after normalize is : ' + name);

// get a list of each words => split by space
List<String> wordList = name.normalizeSpace().split(' ');

System.debug('wordList value is : ' + wordList);

for (Integer i = 0; i < wordList.size(); i++) {
  // update each word to TitleCase by item = item.tolowercase().capilitize()
  wordList[i] = wordList[i].toLowerCase().capitalize();
}
System.debug('wordList value is : ' + wordList);
// now join the list items to get the string
name = String.join(wordList, ' ');
System.debug('name value is : ' + name);
// alternatif   System.debug('wordList : ' + String.join(wordList, ' '));



//book triggera bu kısmı ekledik (yukarıdakinin triggera eklenmiş hali)

  if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
    // Start with trigger loop
    for (Book__c each : Trigger.new) {
      
      // make the name TitleCase 
      each.Name = each.Name.normalizeSpace(); 
      // get a list of each words 
      List<String> wordList = each.Name.split(' '); 
      for(Integer i=0; i<wordList.size() ; i++) {
         wordList[i] = wordList[i].toLowerCase().capitalize(); 
      }
      each.Name = String.join(wordList, ' '); 

    }
  }
