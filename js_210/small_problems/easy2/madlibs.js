const readlineSync = require('readline-sync');

console.log('Enter a noun:');
let noun = readlineSync.prompt();
console.log('Enter a verb:');
let verb = readlineSync.prompt();
console.log('Enter an adjective:');
let adjective = readlineSync.prompt();
console.log('Enter an adverb:');
let adverb = readlineSync.prompt();

console.log(`Do you ${verb} your ${adjective} ${noun} ${adverb}? That's hilarious!`);
