/*for (Integer i=0; i<=10; i++){
    if (i==5){
        System.debug('Tam ortadasın'); 
    }
    else if( i<5 ){
        System.debug('ortaya gelmedin'); 
    }else if (i>5){
        System.debug('ortayı geçtin'); 
    }
}


Integer i=1;

do {
    System.debug('do while loop :' + i); 
    i++;
}
while (i>10);



Integer i=1;

while (i<=10) {
    i+=2;
    System.debug(i); 
    i++;
}
System.debug(i);

Integer i;
for ( i=1; i<=10; i++){
    i+=2;
    System.debug(i); 
}

System.debug(i); 




for (Integer i=1; i<6; i++){
    System.debug(i);
    if(i==3)
    {break;}
     
}

for (Integer i=1; i<6; i++){
    if(i==3){
    break; 
    System.debug(i);
}    
}

for (Integer i=1; i<6; i++){
    if(i==3)
    {break;}
    System.debug(i); 
}


for (Integer i=1; i<6; i++){
    if(i==2 || i==4)
    {continue;}
    System.debug(i); 
}


for (Integer i=1; i<6; i++){
    if(Math.mod(i,2)==0)
    {continue;}
    System.debug(i); 
}*/


for (Integer i=1; i<=20; i++){
    if(Math.mod(i,2)==0 || Math.mod(i,5)==0 )
    {continue;}
    System.debug(i); 
}


List<String> colors = new List<String>{'White', 'Green', 'Red','White', 'Pink'};
           

System.debug(colors.indexOf('White')); 

System.debug(colors.remove(1)); 


for (String each : colors)
{System.debug(colors.indexOf(each) + each);

}



Map <Integer,String> mapA =new Map<Integer,String> {101=>'A',102=>'B',103=>'C'};

Set<Integer> setB = mapA.keySet();
List<String> listB =mapA.values();

for (Integer eachKey:mapA.keySet() ){

    System.debug(eachKey); 
}

for (Integer eachKey:setB ){

    System.debug(eachKey); 
}

for (String eachValue:mapA.values() ){

    System.debug(eachValue); 
}

for (String eachValue:listB ){

    System.debug(eachValue); 
}