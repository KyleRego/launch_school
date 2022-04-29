const readlineSync = require('readline-sync');

const age = readlineSync.question('What is your age? ');
const retirementAge = readlineSync.question('At what age would you like to retire? ');
const difference = retirementAge - age;

const year = new Date().getFullYear();

console.log(`It's ${year}. You will retire in ${difference + year}.`);
console.log(`You have only ${difference} years of work to go!`);
