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