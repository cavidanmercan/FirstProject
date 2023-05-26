//11_2 yi 11_3 den çağıracağız

// create a function to print hello world
function print() {
    console.log('Hello World');
}

// create a function that accept 1 param
// in order to make it available 
// outside of this file use export keyword
export function sayHelloTo(name) {
    console.log('Hello user ' + name);
}

// create a function that accept 2 numbers 
export function addNumbers(num1, num2) {
    return num1 + num2; 
}