// create a function to print hello world

// const print2 = () => {
//     console.log('Hello World');
// }

// if you have only one statement inside {}
// it can be omitted 
const print2 = () => console.log('Hello World');
print2(); 

// const sayHelloTo = (name) => {
//     console.log('Hello user ' + name);
// }

const sayHelloTo = (name) => console.log('Hello user ' + name);
sayHelloTo('Luke'); 
sayHelloTo('Leila');

// const addNumbers = (num1, num2) => {
//     return num1 + num2; 
// }
const addNumbers = (num1, num2) => num1 + num2; 
console.log( addNumbers(100,200) );