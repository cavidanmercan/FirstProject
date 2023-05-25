//TASK-1

//Create a Fitness class 

//Create a method with name 'calculateBMI' which accepts necessary parameter and returns bmi value.

//bmi=(body weight in kg)/(body height in meter)^2

public  class Fitness {
 
    public static Decimal calculateBMI(Decimal weight, Decimal height){
     // Decimal bmi = weight / (height*height); 
     // return bmi;
     //ya da doğrudan
        return weight/(height*height);
    }
    
}


//apex de 

//Fitness.calculateBMI(72, 1.76);
Decimal BMI=Fitness.calculateBMI(72, 1.76);
System.debug('Nora BMI value is : ' + BMI.setScale(3));
//!setscale means . dan sonra 3 hane gelsin istedik 


//!180 dk da 3 km yürüdüyse 60 dk da yani 1 saatte kaç km yürür sonuç:1
Decimal pace=Fitness.calculatePace(3, 180);
System.debug(pace);



/*
Adult Body Mass Index or BMI
If your BMI is less than 18.5, it falls within the underweight range.
If your BMI is 18.5 to 24.9, it falls within the Healthy Weight range.
If your BMI is 25.0 to 29.9, it falls within the overweight range.
If your BMI is 30.0 or higher, it falls within the obese range.
*/



//TASK-2

/*
Pizza Task:
        Attributes:
            size, numberOfCheeseTopping, numberOfPepperoniTopping

            Add a constructor that can set all the fields

        Actions:
            calcCost(): returns the totalCost of the pizza

            print out an output like this :
            'Your M size pizza with 2 numberOfCheeseTopping and 3 numberOfPepperoniTopping costs $20.5'

        Pizza cost is determined by:
                        S: $10 + $2 per cheese topping, $1,5 per pepperoni topping
                        M: $12 + $2 per cheese topping, $1,5 per pepperoni topping
                        L: $14 + $2 per cheese topping, $1,5 per pepperoni topping

 */
public class Pizza {

    public String size;
    public Integer numberOfCheeseTopping, numberOfPepperoniTopping;

    public Pizza (String size, Integer numberOfCheeseTopping, Integer numberOfPepperoniTopping){
        this.size=size;
        this.numberOfCheeseTopping=numberOfCheeseTopping;
        this.numberOfPepperoniTopping=numberOfPepperoniTopping;
        
    }


    public Pizza (){

        
    }


    public Decimal calcCost(){

        Decimal startingPrice = (size=='S')? 10 : (size=='M')? 12 : 14;

        Decimal totalPrice= startingPrice + (numberOfCheeseTopping*2) + (numberOfPepperoniTopping*1.5);

        return totalPrice;


    } 
}


//apex de 


Pizza myPizza =new Pizza('M',2,3);



System.debug ('Your ' + myPizza.size + '  size pizza with ' + myPizza.numberOfCheeseTopping +
 ' numberOfCheeseTopping and ' + myPizza.numberOfPepperoniTopping +
 ' numberOfPepperoniTopping costs: $ ' +  myPizza.calcCost() ); 

//Your M size pizza with 2 numberOfCheeseTopping and 3 numberOfPepperoniTopping costs $20.

 Pizza yourPizza = new Pizza ();

 System.debug(yourPizza); 

 
