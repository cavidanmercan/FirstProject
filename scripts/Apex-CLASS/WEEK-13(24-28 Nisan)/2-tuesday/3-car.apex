
// Car c1 = new Car();
// System.debug('c1 value is : ' + c1);


List<Car> carLst = new List<Car>();

// add 2 ElectricCar 
// add 2 GasCar

carLst.add(   new ElectricCar('Tesla X', 95000, 10)    ); 
carLst.add(   new ElectricCar('Lucid Air', 85000, 9)     ); 

carLst.add(  new GasCar('VW ID4',50000, 2 )     ); 
carLst.add(  new GasCar('Dodge Charger',60000, 3 )      ); 

// go through each car and print it out and call drive method 
for(Car each : carLst) {
    System.debug('Current car : ' + each);
    each.drive(); 
}