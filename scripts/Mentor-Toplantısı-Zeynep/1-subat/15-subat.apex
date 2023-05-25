//1-Find the max number from the given list

List<Integer> list1 = new List<Integer>{ 1, 2, 3, 4, 5 };

Integer max=list1.get(0);

for(Integer each : list1){
    if(each>max){
        max=each;
    }
}
System.debug(max);

//2-Find the min number from the given list

Integer min=list1.get(0);

for(Integer each : list1){
    if(each<min){
        min=each;
    }
}
System.debug(min);

//3-Merge the two given lists

List<Integer> listA = new List<Integer>{ 1, 2, 3, 4, 5 };
List<Integer> listB = new List<Integer>{ 6, 7, 8, 9, 10 };

for(Integer each : listB)
    {listA.add (each);}

System.debug(listA);


//4-Merge the unique elements of two given lists

List<Integer> listX = new List<Integer>{ 1, 2, 3, 4, 5 };
List<Integer> listY = new List<Integer>{ 4, 5, 6, 7, 8, 9, 10 };

Set<Integer> set1=new Set<Integer>();

for (Integer each: listX ){
    set1.add(each);
 }

for (Integer each: listY ){
    set1.add(each);
}

System.debug(set1);

//5-reverse the given list's elements
List<String> list3=new List<String>{'apex','java','phyton','javaScript','C#','C++'};

List<String> reverse = new List<String>();

for(Integer index=list3.size()-1; index>=0; index--){
    reverse.add(list3.get(index));
}
System.debug(reverse);


//6-print the unique elements of a given list
List<String> words=new List<String>{'apex','java','apex','phyton','javaScript','java','C#','C++'};

for(String eachWord : words ){
    Integer count=0;
    for(String each : words){
        if(each==eachWord)
            count++;
    }

    if(count==1)
        System.debug(eachWord);

}








