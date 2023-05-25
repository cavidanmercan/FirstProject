/*4. Write a program that store List of Double with 10 items 
   break out of the loop if any number is between 50.5 and 99.99 */

   List<Double> numbers = new List<Double>{9.34,55.9, 7.98,8.34,3.73,22.44,29.40,92.50,58.98,91.79,82.00};

   for(Double eachNum : numbers){
    
    if(50.5<eachNum && eachNum<99.99){
        break;
    }
   System.debug(eachNum);  
}
