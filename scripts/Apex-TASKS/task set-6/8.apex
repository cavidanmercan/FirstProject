//8. Create an String Array with 10 elements and print them in reverse order

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