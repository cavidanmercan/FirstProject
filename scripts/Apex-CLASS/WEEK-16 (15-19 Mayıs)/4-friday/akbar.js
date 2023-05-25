// backtick--- ${}


// The backtick syntax for string instead of quotation, 
// also known as template literals or template strings, 
// it provides an improved way to work with strings in JavaScript. 
// It allows for easier string interpolation and multiline strings compared to traditional string concatenation using the + operator.


//Here are some key features and benefits of using template literals:

//String Interpolation: With template literals, you can easily embed variables or expressions directly into the string using the ${} syntax. This eliminates the need for manual concatenation or using the + operator. Example:
const name1 = 'John';
const message = `Hello, ${name1}!`; 
console.log(message);  //Hello, John!


const firstName = 'Jon'; 
const lastName = 'Snow'; 
const greeting = `Hello, ${firstName} ${lastName} ! Welcome to the LWC Word!` 
console.log(greeting); // Hello, Jon Snow ! Welcome to the LWC Word!


// Multiline Strings: Template literals support multiline strings without the need for escape characters or concatenation. Simply write the string content on multiple lines within the backticks ( ). Example:
const multiline = `
  This is a
  multiline
  string.
`;
console.log(multiline);
/*
Output:
  This is a
  multiline
  string.
*/



// Expression Evaluation: Inside a template literal, you can include expressions or function calls using ${}. The expression is evaluated and the result is converted to a string and inserted into the final string. Example:

// Template literals provide a more concise and expressive way to work with strings in JavaScript, making code more readable and maintainable, especially when dealing with dynamic content or multiline strings.
const num1 = 10;
const num2 = 5;
const result = `The sum of ${num1} and ${num2} is ${num1 + num2}.`; 
console.log(result);
// Output: "The sum of 10 and 5 is 15."