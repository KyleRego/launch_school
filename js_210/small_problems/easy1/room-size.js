let readlineSync = require('readline-sync');

const SQUARE_FEET_PER_SQUARE_METERS = 10.7639;

console.log('Enter the length of the room in meters:');
let lengthMeters = readlineSync.prompt();
lengthMeters = parseInt(lengthMeters, 10);

console.log('Enter the width of the room in meters:');
let widthMeters = readlineSync.prompt();
widthMeters = parseInt(widthMeters, 10);

let areaMeters = lengthMeters * widthMeters;
let areaFeet = areaMeters * SQUARE_FEET_PER_SQUARE_METERS;

console.log(`The area of the room is ${areaMeters.toFixed(2)} square meters (${areaFeet.toFixed(2)} square feet).`);
