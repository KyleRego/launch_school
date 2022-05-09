// input: two arrays of numbers
// a new array with the produces of elements at the same index in the 2 input arrays
// assume that the 2 arrays have the same length

function multiplyList(arr1, arr2) {
  let result = [];
  for (let i = 0; i < arr1.length; i += 1) {
    result.push(arr1[i] * arr2[i]);
  }
  return result;
}

console.log(multiplyList([3, 5, 7], [9, 10, 11]));    // [27, 50, 77]