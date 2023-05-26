//backtick ile yapılana--> template string deniyormuş 

const firstName = "Kanymgul"; 
const lastName = "K";
const age = 18; 

// print out first name is firstName 

console.log("firstName is " + firstName);

// ` backtick symbol for template string 

console.log(`firstName is ${firstName} `); 

// print out full name is firstName lastName and she is age years old 
console.log(`full name is ${firstName} ${lastName} and she is ${age} years old`);

const multiline = 
`this is line 1 
this is line 2
this is line 3 `; 

console.log(multiline);

console.log(`uppercase version is :   ${multiline.toUpperCase() } `);



const num1 = 10; 
const num2 = 20;

console.log(`The result of adding ${num1} to ${num2} is ${num1+num2} `);