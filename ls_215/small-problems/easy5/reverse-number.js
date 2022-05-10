// input: a positive integer
// output: the number with its digits reversed
// algorithm
// convert the number to a stirng
// reverse the string by splitting to an array, reversing, and then joining
// convert the reversed string to a numbre

function reverseNumber(integer) {
  let reversedString = String(integer).split('').reverse().join('')
  return Number(reversedString);
}

console.log(reverseNumber(12345));    // 54321
console.log(reverseNumber(12213));    // 31221
console.log(reverseNumber(456));      // 654
console.log(reverseNumber(12000));    // 21 -- Note that zeros get dropped!
console.log(reverseNumber(1));        // 1
