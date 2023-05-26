const p1 = {
    firstName: "Elif", 
    lastName : "K",
    gender: "Female", 
    age :18
}; 

// console.log(p1.firstName);
// let firstName = p1.firstName ; //hata verdi


// store firstName and lastName into firstName, lastName variables 
// use destructing syntax 

// let { firstName, lastName, gender } = p1; 
// you create 2 variables and extracted the field of p1 object and assign the value to it 
// console.log(firstName);
// console.log(lastName);
// console.log(gender);


//----------------
// create a function to expect Person object 
// and print out firstName , lastName field 

// function printPerson(thePerson) {
//     console.log(thePerson.firstName);
//     console.log(thePerson.lastName);
// }

//printPerson(p1);

//-------------------

                        // thePerson
function printPerson(  {firstName, lastName}  ) {
    console.log(firstName);
    console.log(lastName);
}


printPerson(p1);


//-------------------

let p2 = {
    firstName: "Ali", 
    lastName: "S",
    age : 18 
}

printPerson(p2); 