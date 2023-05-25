class Person{
    // this is how we create field|property
    firstName; 
    lastName; 
    // constructor 
    constructor(firstName, lastName) {
        this.firstName = firstName; 
        this.lastName = lastName; 
    }

    // this is how we create method|function
    //inside the class 
    printFullName() {
        console.log('Full Name : ' + this.firstName + ' ' + this.lastName);
    }

    getUpperCaseFirstName() {
        return this.firstName.toUpperCase(); 
    }


}

let p1 = new Person('Jon', 'Snow'); 
// p1.firstName = 'Jon';
// p1.lastName = 'Snow';  
console.log(p1);
p1.printFullName(); 

console.log(  p1.getUpperCaseFirstName()    );