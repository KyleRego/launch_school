// input: an integer
// output: console logs a pattern

// algorithm
// set a variable equal to 1
// set a second variable equal to a string of stars of length equal to input
// while the variable is less than the input
//   set the variable - 1's position in the string equal to the variable converted to a string
//   console log the string
//   increment the variable

function generatePattern(integer) {
  let currentDigit = 1;
  let outputString = '*'.repeat(integer);
  console.log(outputString);
  while (currentDigit <= integer) {
    outputString = outputString.split('')
    outputString[currentDigit - 1] = currentDigit.toString();
    outputString = outputString.join('');
    console.log(outputString);
    currentDigit++;
  }
}

generatePattern(7);