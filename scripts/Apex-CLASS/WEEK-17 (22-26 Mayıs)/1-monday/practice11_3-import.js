import {addNumbers, sayHelloTo} from "./practice11_2-methods.js";
import chalk from "chalk";
import Person from "./practice12_1-person.js";


sayHelloTo('John')

console.log(addNumbers(100,200));

console.log(chalk.blue("Hello World"));

const p1=new Person ("Cavidan", "M");
p1.printFullName();
p1.age=38;
console.log(p1);




