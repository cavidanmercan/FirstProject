// THIS WILL NOT WORK , can not create object out of abstract type
// Animal a1 = new Animal('abc',2);

// Dog d1 = new Dog('Sharik', 3,'Golden Retriver');
// System.debug('d1 value is : ' + d1);
// d1.makeNoise() ; 

// System.debug('d1.getInfo(\'Hills\') value is : ' 
//                 + d1.getInfo('Hills'));


// Cat c1 = new Cat('Tom', 5, 'Yellow');
// System.debug('c1 value is : ' + c1);
// c1.makeNoise() ; 
// System.debug('c1.getInfo(\'Fish\') value is : '
//                      + c1.getInfo('Fish'));


List<Animal> animalLst = new List<Animal> (); 

// add 2 dogs and 2 cats into this list 
// go through each animal 
// let it make noise and print out getInfo result 

animalLst.add(  new Dog('Bobik', 3,'Toy Terrier') ) ; 
animalLst.add(  new Dog('Roki', 5,'German Shapper') ) ; 

animalLst.add(  new Cat('Eva', 2, 'White')   ) ; 
animalLst.add(  new Cat('Rosi', 3, 'Black')  ) ; 

for(Animal each : animalLst) {
    //System.debug('Current animal : ' + each);
    each.makeNoise() ; 

    System.debug('each.getInfo(\'Fish\') value is : '
                     + each.getInfo('Fish'));

}


//!öğleden sonraki konuda eklenen kısım
// Animal a1 = new Animal();

// if you have a variable 
// you can assign any object of same type (if not abstract)
// or sub type (child class type) to the variable 
Animal a1 = new Dog('Sultan', 4 , 'Poodle'); 

System.debug( a1 instanceof Dog ); 
System.debug( a1 instanceof Cat ); 



Animal a2 = new Cat('Poncik', 5 , 'Grey');


// Flyable f1 = new Flyable(); 

Flyable f1 = new Bird(); 
Flyable f2 = new Plane(); 


