@isTest
public class FitnessTest{

    @isTest static void testBmi1(){
        //Arrange
        Decimal weight=52;
        Decimal height=1.6;

        //Act

        Decimal bmi=Fitness.calculateBMI(weight, height);
        //Assert

        System.assertEquals(20.3125, bmi, 'bmi should be 20.3125');
    }

    @isTest static void testBmi2(){
        //Arrange
        Decimal weight=52;
        Decimal height=0;

        //Act
        Decimal bmi=Fitness.calculateBMI(weight, height);
        //Assert

        System.assertEquals(-1, bmi, 'bmi cannot be <=0');
    }

    @isTest static void testPace1(){
        //Arrange
        Decimal distance=5;
        Decimal minutes=30;

        //Act

        Decimal pace=Fitness.calculatePace(distance, minutes);
        //Assert

        System.assertEquals(10, pace, 'pace should be 10');
    }

    @isTest static void testPace2(){
        //Arrange
        Decimal distance=0;
        Decimal minutes=30;

        //Act

        Decimal pace=Fitness.calculatePace(distance, minutes);
        //Assert

        System.assertEquals(-1, pace, 'pace cannot be zero');
    }


    
}