//9. Create an Boolean Array with 10 elements and count the the number of true value

Boolean[] BooleanArray = new Boolean[10];
BooleanArray[0]=true;
BooleanArray[1]=true;
BooleanArray[2]=true;
BooleanArray[3]=true;
BooleanArray[4]=true;
BooleanArray[5]=false;
BooleanArray[6]=false;
BooleanArray[7]=false;
BooleanArray[8]=false;
BooleanArray[9]=false;

Integer count=0;

for(Boolean each : BooleanArray){
    if (each == true){
        count++;
    }
}
System.debug('Count of the number of true value :' + count);