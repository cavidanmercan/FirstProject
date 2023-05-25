// This is how we comment in one line 
/**
 * This is how we comment in multiple line
 * 
*/


console.log("Hello World");

console.log('Hello World in single quote');

// 3 ways we can define variable 
// var , let
// const  if the variable value is fixed and can not be changed 

/**
 * Javascript is not a strongly typed language 
 * it's a case sensitive language 
 */

let message = "Hello to javascript"; 
console.log(message);
// re-assigning value 
message = "Javascript is fun !";
console.log(message);

var num = 10; 
console.log(num);

let price = 1399.99;
console.log("Iphone price is " + price); 

let hired = true; 
console.log("Is Marina Hired ? : " + hired);

let coffee; 
console.log(coffee);

let negativity = null; 
console.log(negativity);

// creating a variable that can not change 
// const -> short for constant , a value that does not change 

const bla = "John"; 
//  bla = "something else";  // this will throw an error , can not re-assign the const 
console.log(bla);