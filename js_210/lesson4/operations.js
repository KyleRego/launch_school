function push(array, value) {
  array[array.length] = value;
  return array.length;
}

// let count = [0, 1, 2];
// console.log(push(count, 3));         // 4
// console.log(count);                  // [ 0, 1, 2, 3 ]


function pop(array) {
  if (array.length === 0) {
    return undefined;
  }
  let returnValue = array[array.length - 1];
  array.length = array.length - 1;
  return returnValue;
}

// let count = [1, 2, 3];
// console.log(pop(count));             // 3
// console.log(count);                  // [ 1, 2 ]

function unshift(array, value) {
  for (let i = array.length - 1; i >= 0; i--) {
    array[i+1] = array[i];
  }
  array[0] = value;
  return array.length;
}

// let count = [1, 2, 3];
// console.log(unshift(count, 0));      // 4
// console.log(count);                  // [ 0, 1, 2, 3 ]

function shift(array) {
  if (array.length === 0) {
    return undefined;
  }
  let first = array[0];
  for (let i = 0; i < array.length - 1; i++) {
    array[i] = array[i+1];
  }
  array.length = array.length - 1;
  return first;
}

// let count = [1, 2, 3];
// console.log(shift(count));           // 1
// console.log(count);                  // [ 2, 3 ]

function indexOf(array, value) {
  for (let i = 0; i < array.length; i++) {
    if (array[i] === value) {
      return i;
    }
  }
  return -1;
}

// console.log(indexOf([1, 2, 3, 3], 3));         // 2
// console.log(indexOf([1, 2, 3], 4));            // -1

function lastIndexOf(array, value) {
  for (let i = array.length - 1; i >= 0; i--) {
    if (array[i] === value) {
      return i;
    }
  }
  return -1;
}

// console.log(lastIndexOf([1, 2, 3, 3], 3));     // 3
// console.log(lastIndexOf([1, 2, 3], 4));        // -1

function slice(array, startIndex, endIndex) {
  let newArray = [];
  for (let i = startIndex; i < endIndex; i++) {
    push(newArray, array[i]);
  }
  return newArray;
}

// console.log(slice([1, 2, 3, 4, 5], 0, 2));                      // [ 1, 2 ]
// console.log(slice(['a', 'b', 'c', 'd', 'e', 'f', 'g'], 1, 3));  // [ 'b', 'c' ]

// splice
// input: an array, a starting index, and a number of elements to remove
// removes an array of values from array starting at starting index of length equal to number to remove
// and returns the removed elements array

// algorithm

// iterate through the array starting from start index up until start index + number to remove
//   push the element onto a new array and set the element at that position equal to the element at position number to remove later
// return the new array

function splice(array, startIndex, numberToRemove) {
  let splicedOutArray = [];
  for (let i = startIndex; i < startIndex + numberToRemove; i++) {
    splicedOutArray.push(array[i]);
    array[i] = array[i+numberToRemove];
  }
  array.length = array.length - numberToRemove;
  return splicedOutArray;
}

// let count = [1, 2, 3, 4, 5, 6, 7, 8];
// console.log(splice(count, 2, 5));                   // [ 3, 4, 5, 6, 7 ]
// console.log(count);                                 // [ 1, 2, 8 ]

function concat(array1, array2) {
  array1 = array1;
  for (let i = 0; i < array2.length; i++) {
    array1.push(array2[i]);
  }
  return array1;
}

// console.log(concat([1, 2, 3], [4, 5, 6]));       // [ 1, 2, 3, 4, 5, 6 ]

function join(array, string) {
  let newString = '';
  for (let i = 0; i < array.length; i++) {
    if (i === array.length -1) {
      newString += array[i];
    } else {
      newString += array[i];
      newString += string;
    }
  }
  return newString;
}

console.log(join(['bri', 'tru', 'wha'], 'ck '));       // 'brick truck wha'
console.log(join([1, 2, 3], ' and '));                 // '1 and 2 and 3'