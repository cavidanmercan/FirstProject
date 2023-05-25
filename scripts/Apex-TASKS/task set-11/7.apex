/*7. Map Practice : MapBully (NO LOOP NEEDED)
   -  Given A Map with key values in it with a.b,c as key and String as values
   -  for example : {'a'=>'candy', 'b'=>'dirt'}
   -  Follow below requirement to update the Map 
   -  if the key a has a value (not null), 
      -  set the key b to have that value
      -  and set the a to have value nothing 
      -  basically b is a bully , taking the value and replacing it with the nothing.
   -  You should get this result {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a' => 'candy'}  should be updated to this when you print 
      -  updated Map : {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a'=>'candy', 'b'=> 'carrot', 'c': 'meh'}
      -  updated map : {a=nothing,b=candy,c=meh} */



Map<String, String> myMap = new Map<String, String>();
myMap.put('a','candy' );
myMap.put('b','dirt' );

if( myMap.get('a') != null ){
    myMap.put('b', myMap.get('a'));
    myMap.put('a', 'nothing' );
}
System.debug(myMap); 

Map<String, String> updatedMap = new Map<String, String>();
updatedMap.putAll(myMap);
updatedMap.put('c','meh' );
System.debug(updatedMap); 


