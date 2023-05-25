// for loop 
for (let i = 1; i < 6; i++  ){
    console.log(i);
}

console.log("----------");

// while loop 
let x = 1; 
while (x<6) {
    console.log(x);
    x++; 
}

console.log("----------");
// do while loop
let y = 1; 

do {
    console.log(y);
    y++; 
} while (y < 6);

console.log("----------");

// using for loop to iterate over array items 
let names = ["Clark", "Bruce", "Barry", "Diana", "John"];
for (let i = 0; i < names.length; i++  ){
    console.log(names[i]);
}

console.log("----------");
// using for of to iterate over array items 
for (let each of names  ){
    console.log(each);
}

console.log("----------"); // sit back and relax 
names.forEach( each => console.log(each) ); 