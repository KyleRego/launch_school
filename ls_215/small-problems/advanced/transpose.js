// input: a two dimensional array that is a 3 x 3 matrix
// output: the transpose of the matrix

// rules:
// do not mutate the input array

// algorithm
// declare transposeRow1, transposeRow2, and transposeRow3 empty arrays
// iterate through the input array
// for each subarray, put the first element into transposeRow1, second element into transposeRow2, third element into transposeRow3
// return the transpose array by combining the three 

function transpose(matrix) {
  let transposeRow1 = [];
  let transposeRow2 = [];
  let transposeRow3 = [];
  matrix.forEach(row => {
    transposeRow1.push(row[0]);
    transposeRow2.push(row[1]);
    transposeRow3.push(row[2]);
  })
  return [ transposeRow1, transposeRow2, transposeRow3 ];
}


const matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
];

const newMatrix = transpose(matrix);

console.log(newMatrix);      // [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
console.log(matrix);         // [[1, 5, 8], [4, 7, 2], [3, 9, 6]]