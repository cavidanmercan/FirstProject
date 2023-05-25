//21

public String aOrAn(String word) {
    //startsWith vowel (a, e, i, o, or u) => return 'a' else return 'an'

    if(word.startsWith('a') || word.startsWith('e') ||
        word.startsWith('i') ||word.startsWith('o') ||
        word.startsWith('u') ){

            return 'an '+ word; 

    }else{
        return 'a '+ word; 
    }


}


//16

public Integer sumToN(Integer n) {
    //code here
    Integer sum = 0 ; 
    for(Integer i = 1 ; i<= n ; i++){
        sum += i ; 
        // sum = sum + i ; // will do the same
    }

    return sum ; 
}
