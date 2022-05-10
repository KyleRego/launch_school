// input: an array
// output: a new array, where the leftmost element of the original array 
// is now the last and everything was shifted to the left by 1 spot

// algorithm
// make a new array by slicing the input array starting at index 1
// push onto the end of the new array the first element of the input array
// return the new array

function rotateArray(array) {
  if (!Array.isArray(array)) { return undefined; }
  if (array.length === 0) { return []; }
  let result = array.slice(1);
  result.push(array[0]);
  return result;
}

console.log(rotateArray([1, 2, 3, 4, 5])) // [2, 3, 4, 5, 1]
console.log(rotateArray([7, 3, 5, 2, 9, 1]));       // [3, 5, 2, 9, 1, 7]
console.log(rotateArray(['a', 'b', 'c']));          // ["b", "c", "a"]
console.log(rotateArray(['a']));                    // ["a"]
console.log(rotateArray([1, 'a', 3, 'c']));         // ["a", 3, "c", 1]
console.log(rotateArray([{ a: 2 }, [1, 2], 3]));    // [[1, 2], 3, { a: 2 }]
console.log(rotateArray([]));                       // []

// return `undefined` if the argument is not an array
console.log(rotateArray());                         // undefined
console.log(rotateArray(1));                        // undefined


// the input array is not mutated
const array = [1, 2, 3, 4];
console.log(rotateArray(array));                    // [2, 3, 4, 1]
console.log(array);                                 // [1, 2, 3, 4]