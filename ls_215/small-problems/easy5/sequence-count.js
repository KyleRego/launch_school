// input: 2 integers
// first arg is count
// second is startingNumber

// output: an array with number of elements equal to count, with each element being a multiple of startingNumber

// algorithm
// declare an empty array called result
// for (let i = 0; i < count; i += 1)
//   push startingNumber * (i + 1) onto the result
// return result

function sequence(count, startingNumber) {
  let result = [];
  for (let i = 0; i < count; i += 1) {
    result.push(startingNumber * (i + 1))
  }
  return result;
}

console.log(sequence(5, 1));          // [1, 2, 3, 4, 5]
console.log(sequence(4, -7));         // [-7, -14, -21, -28]
console.log(sequence(3, 0));          // [0, 0, 0]
console.log(sequence(0, 1000000));    // []