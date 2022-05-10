// input: a positive integer
// output: all integers starting from 1 upto the positive integer (inclusive) in an array

// algorithm
// declare an empty array called result
// use a for loop starting at 1 and up to and equal to the input
//   push each index into the result
// return result


function sequence(integer) {
  let result = [];
  for (let i = 1; i <= integer; i += 1) {
    result.push(i)
  }
  return result;
}

console.log(sequence(5));    // [1, 2, 3, 4, 5]
console.log(sequence(3));    // [1, 2, 3]
console.log(sequence(1));    // [1]