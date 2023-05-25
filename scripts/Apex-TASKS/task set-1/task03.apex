/*Declare and initialize a String variable with one character
check the if character is vowel 'a' , 'e', 'o' , 'u' , 'i'
if true print it's a vowel 
else print it's not a vowel!*/

String letter= 'c';

if( letter == 'a' ||letter == 'e' ||letter == 'o' || letter == 'u' || letter == 'i' ){
    System.debug('It\'s a vowel');

}else {
    System.debug('It\'s not a vowel');
}

//switch ile de yapılabiliyormuş sonra dene


String letter = 'c';


switch on letter {
    when 'a', 'e', 'i', 'o', 'u' {
        System.debug('Its a vowel');
    }    when else {
        System.debug('Its not a vowel');
    }}