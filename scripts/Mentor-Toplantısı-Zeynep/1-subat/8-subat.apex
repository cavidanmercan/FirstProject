//write a program that can identify if the number is positive, 
//negative or zero, do not use if

    Integer num=0;
    System.debug(num+' is a positive number: '+(num>0));
    System.debug(num+' is a negative number: '+(num<0));
    System.debug(num+' is zero: '+(num==0));

    if(num==0){
        System.debug(num+' is zero');
    }else if(num<0){
        System.debug(num+' is a negative number');
    }else{
        System.debug(num+' is a positive number');
    }



    //write a program that finds the median number from the given three different 
//numbers

Integer num1=10,num2=20,num3=15;
if(num1>num2&&num2>num3||num3>num2&&num2>num1){
    System.debug('num2 is median');
}
if(num2>num1&&num1>num3||num3>num1&&num1>num2){
   System.debug('num1 is median');
}
if(num1>num3&&num3>num2||num2>num3&&num3>num1){
    System.debug('num3 is median');
}



//write a program that gives the day of the week according to the given number 
        //between1-7
        
        
        Integer num=5;
        String day;
        if (num==1){
            //System.out.println("Pazartesi");
            day='Sunday';
        }
        else if(num==2){
            //System.out.println("Sali");
            day='Monday';
        }
        else if (num==3){
            //System.out.println("Carsamba");
            day='Tuesday';
        }
        else if (num==4){
            //System.out.println("Persembe");
            day='Wednesday';
        }
        else if (num==5){
            //System.out.println("Cuma");
            day='Thursday';

        }
        else if (num==6){
            //System.out.println("Cumartesi");
            day='Friday';
        }
        else{
            //System.out.println("Pazar");
            day='Saturday';
        }

        System.debug(day);
    


            day =(num==1)? 'Sunday' :(num==2)? 'Monday' :(num==3)? 'Tuesday' :(num==4)? 
            'Wednesday' :(num==5)? 'Thursday' :(num==6)? 'Friday' : 'Saturday';
            System.debug(day);

            switch on num{
                when 1{
                    day='Sunday';
                }
                when 2{
                    day='Monday';
                }
                when 3{
                    day='Tuesday';
                }
                when 4{
                    day='Wednesday';
                }
                when 5{
                    day='Thursday';
                }
                when 6{
                    day='Friday';
                }
                when else{
                    day='Saturday';
                }
            }
            System.debug(day);