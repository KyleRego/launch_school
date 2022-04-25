let readlineSync = require('readline-sync');

console.log('What is the bill?');
let bill = parseFloat(readlineSync.prompt());

console.log('What is the tip percentage?');
let tipPercentage = parseFloat(readlineSync.prompt());

let tip = bill * tipPercentage / 100;
let total = bill + tip;

console.log(`The tip is $${tip.toFixed(2)}.`);
console.log(`The total is $${total.toFixed(2)}`);
