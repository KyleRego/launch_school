// input: an array of integers
// output: multiply all the integers of the array together, and divide by the total number of integers in the array
// also: return the result as a string rounded to three decimal places

// algorithm
// use reduce to get all the numbers multipled together and divide by the length of the array
// return that to three decimal points using Number.prototype.toFixed()


function showMultiplicativeAverage(integers) {
  let result = integers.reduce((int1, int2) => int1 * int2, 1) / integers.length;
  return result.toFixed(3);
}

console.log(showMultiplicativeAverage([3, 5]));                   // "7.500"
console.log(showMultiplicativeAverage([2, 5, 7, 11, 13, 17]));    // "28361.667"