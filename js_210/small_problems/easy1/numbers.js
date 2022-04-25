let readlineSync = require('readline-sync');

function computeSumOfAllIntegersFromOneUpTo(integer) {
  let sum = 0;
  for (let i = 1; i <= integer; i++) {
    sum += i;
  }
  return sum;
}

function computeMultiplicationOfAllIntegersFromOneUpTo(integer) {
  let mult = 1;
  for (let i = 1; i <= integer; i++) {
    mult *= i;
  }
  return mult;
}

console.log('Please enter an integer greater than 0:');
const integer = parseInt(readlineSync.prompt(), 10);
console.log('Enter "s" to compute the sum, or "p" to compute the product.');
const choice = readlineSync.prompt();

if (choice === 's') {
  const sum = computeSumOfAllIntegersFromOneUpTo(integer);
  console.log(`The sum of all integers between 1 and ${integer} is ${sum}`);
} else if (choice === 'p') {
  const mult = computeMultiplicationOfAllIntegersFromOneUpTo(integer);
  console.log(`The product of the integers between 1 and ${integer} is ${mult}`);
} else {
  console.log('Invalid choice')
}