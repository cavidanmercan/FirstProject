// if statements 

let num = 100; 

if (num > 70) {
    console.log('You have passed');
}


let num2 = 200; 

if (num2 > 100) {
    console.log('its greater than 100');
} else {
    console.log('its not greater than 100');
}


// if the num2 is greater than 150 -- super number 
// if it's between 100 - 150 -- cool number 
// else ok number 
if (num2 > 150) {
    console.log('super number');
}else if(num2 > 100){
    console.log('cool number');
} else {
    console.log('ok number');
}

let season = "Spring"; 

switch (season) {
    case "Spring":
        console.log('Go Hiking');
        //break;
    case "Summer":
        console.log('Go Swimming');
        //break;
    case "Fall":
        console.log('Go Biking');
        break;
    case "Winter":
        console.log('Go Skiing');
        break;
    default:
        console.log('BAD SEASON VALUE!!!');
        break;
}