export default class Person{
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