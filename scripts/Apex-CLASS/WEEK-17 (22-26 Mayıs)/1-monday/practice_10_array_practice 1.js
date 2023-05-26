let prices = [17, 87, 54, 85, 10]; 
// prices.forEach(  bla => console.log(bla)  );

// prices.forEach(bla => {
//     console.log(bla);
//     console.log('This is another line');
// });


//-------------------
// function processItem(bla) {
//     console.log(bla);
//     console.log('This is another line');
// }
// processItem('Hello World');
// processItem(12);
// processItem(16);
// processItem('more stuff here');

//--------------------

// function processItem(bla) {
//     console.log(bla);
//     console.log('This is another line');
// }

// prices.forEach( processItem ); 



//----------------
// const processItem = (bla)=>{
//         console.log(bla);
//         console.log('This is another line');
//     }

// prices.forEach( processItem ); 


//----------------------------

// create a new array with each number doubled from prices array 
let doubledPrices = prices.map(each => each * 2);
console.log(doubledPrices); 
//[17, 87, 54, 85, 10]; ---- > [34, 174, 108, 170, 20]


//----------------

// create a new array with item turned into this "price is YourPriceHere"
//[17, 87, 54, 85, 10]; ---- >
let tagPrices = prices.map(each => "price is " + each);
console.log(tagPrices);  
// ["price is 17", "price is 87", .........]


//-----------------






