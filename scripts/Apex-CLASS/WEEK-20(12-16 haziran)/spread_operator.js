// The spread operator (...) is a feature introduced in ES6 (ES2015) version of JavaScript. 
//It allows an iterable such as an array expression or string to be expanded in places 
//where zero or more arguments(for function calls) or elements(for array literals) are expected, 
//or an object expression to be expanded in places 
//where zero or more key - value pairs(for object literals) are expected.

const sports = ['soccer', 'basketball', 'volleyball'];
console.log(sports); 
// ...sports represent each items in above array 
// const sportsCopy = [...sports];

// get a new array by adding everything inside sports array and CODING 

const sportsCopy = [...sports , 'CODING'  ]; 

console.log(sportsCopy); 


function print3Sports(sport1, sport2, sport3) {
    console.log(sport1 + sport2 + sport3); 
}

// print3Sports(sports[0] , sports[1], sports[2]);
print3Sports(...sports); // spreading the array of 3 items to 3 values and pass it to the function 


const person = {
    firstName: 'Jon',
    lastName : 'Snow'
}

console.log(person); 
// copy each and every key-value inside person object into personCopy
// const personCopy = { ...person }; 

// add one more field age:18
const personCopy = {...person , age:18 } 

console.log(personCopy); 
// get a copy of person and update the value of lastName
const personCopy = {...person , lastName:'Wick'}      ;

console.log(personCopy);