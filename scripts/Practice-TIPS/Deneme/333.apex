Square s = new Square('Box' ,  10) ; 
s.calculateArea();
System.debug('s value is : ' + s);

Rectangle s1 = new Square('Box' ,  10) ; 
s1.calculateArea();
System.debug('s value is : ' + s1);

Shape s2 =  new Square('Box' ,  10) ; 
s2.calculateArea();
System.debug('s value is : ' + s2);

// downcast the variable s DataType to Square 
Square sq  =  s ; 
