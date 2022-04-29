const readlineSync = require('readline-sync');

function getNumber(msg) {
  return readlineSync.question(msg);
}

function numberAppearsInNumbers(number, ...numbers) {
  for (let i = 0; i < numbers.length; i += 1) {
    if (numbers[i] === number) {
      return true;
    }
  }
  return false;
}

const number1 = getNumber('Enter the 1st number: ');
const number2 = getNumber('Enter the 2nd number: ');
const number3 = getNumber('Enter the 3rd number: ');
const number4 = getNumber('Enter the 4th number: ');
const number5 = getNumber('Enter the 5th number: ');

const number = getNumber('Enter the last number: ');

const itAppearsIn = numberAppearsInNumbers(number, number1, number2, number3, number4, number5);
if (itAppearsIn) {
  console.log('it appears');
} else {
  console.log('it dos not appear');
}
