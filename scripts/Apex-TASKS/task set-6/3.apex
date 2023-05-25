/*3. Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4*/

List<String> names = new List<String>{'Jon Snow', 'John White', 'Andy Young',  'Avi Green', 'Jane Gray','Josh Davis'};
    
if (!names.contains('Jon Snow')) {
    names.add(4, 'Jon Snow');
} else {
  Integer IndexOfJS = names.indexOf('Jon Snow');
  names.remove(IndexOfJS);
  names.add(4, 'Jon Snow');
}

System.debug('New Names List : ' +names);



