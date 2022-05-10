// input: a positive integer called number and another positive integer called n
// output: a new number that is the result of moving the first digit 
//         to be the last and shifting everything to the left by one spot

// algorithm
// make the number into a string
// make that string into an array of chars
// declare a firstPart array to be the chars array upto the part that needs to be rotated
// declare a rotatedPart array to be the the chars array passed through the rotateArray function
// concat the firstPart and rotatedPart, convert to a number and return it

function rotateArray(array) {
  if (!Array.isArray(array)) { return undefined; }
  if (array.length === 0) { return []; }
  let result = array.slice(1);
  result.push(array[0]);
  return result;
}

function rotateRightmostDigits(number, n) {
  let stringNumber = String(number);
  let chars = stringNumber.split('');
  let firstPart = chars.slice(0, chars.length - n);
  let rotatedPart = rotateArray(chars.slice(chars.length - n));
  return Number(firstPart.concat(rotatedPart).join(''));
}

console.log(rotateRightmostDigits(735291, 1));      // 735291
console.log(rotateRightmostDigits(735291, 2));      // 735219
console.log(rotateRightmostDigits(735291, 3));      // 735912
console.log(rotateRightmostDigits(735291, 4));      // 732915
console.log(rotateRightmostDigits(735291, 5));      // 752913
console.log(rotateRightmostDigits(735291, 6));      // 352917