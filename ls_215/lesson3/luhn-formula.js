function minusNineIfGreaterThanTen(number) {
  if (number >= 10) {
    return number - 9;
  } else {
    return number;
  }
}

function luhnChecksum(string) {
  let digits = string.replace(/\D/g, '').split('').reverse().join('');
  let sum = 0;
  for (let i = 0; i < digits.length; i += 1) {
    const digit = Number(digits[i])
    let addToSum = (i % 2 === 1) ? minusNineIfGreaterThanTen(2 * digit) : digit;
    sum += addToSum;
  }
  return (sum % 10 === 0);
}

// input: a string with digits
// output: the luhn checksum

// clean the input string so it is only digits
// reverse the string
// set sum = 0
//   iterate through the string, add twice the digit converted to a number to sum if index is even
//                               add the digit converted to a number if the index is odd
// check if the sum is 0

console.log(luhnChecksum('1111')); // 6
console.log(luhnChecksum('8763')); // 20
console.log(luhnChecksum('11ffff11')); // 6