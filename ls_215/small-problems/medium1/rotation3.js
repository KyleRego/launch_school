// input: a positive integer
// output: the maximum rotation of the integer

// algorithm
// for (let i = length of number; i > 0; i -= 1)
//   number = rotateRightmostDigits(number, i)
// return number

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

function maxRotation(number) {
  for (let i = String(number).length; i > 0; i -= 1) {
    number = rotateRightmostDigits(number, i)
  }
  return number;
}


console.log(maxRotation(735291));          // 321579
console.log(maxRotation(3));               // 3
console.log(maxRotation(35));              // 53
console.log(maxRotation(105));             // 15 -- the leading zero gets dropped
console.log(maxRotation(8703529146));      // 7321609845


// 735291 -> 352917 -> 329175 -> 321759 -> 321597 -> 321579