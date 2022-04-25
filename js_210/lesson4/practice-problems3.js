function oddElementsOf(array) {
  let newArray = [];
  for (let i = 0; i < array.length; i++) {
    if (i % 2 === 1) {
      newArray.push(array[i]);
    }
  }
  return newArray;
}

// let digits = [4, 8, 15, 16, 23, 42];

// console.log(oddElementsOf(digits));

function doubleReverse(array) {
  let newArray = array;
  for (let i = array.length - 1; i >= 0; i--) {
    newArray.push(array[i]);
  }
  return newArray;
}

// console.log(doubleReverse([1, 2, 3]));

function sortDescending(array) {
  array = array.slice();
  return array.sort( (a, b) => b - a);
}

// let array = [23, 4, 16, 42, 8, 15];
// let result = sortDescending(array);  // returns [42, 23, 16, 15, 8, 4]
// console.log(result);                 // logs    [42, 23, 16, 15, 8, 4]
// console.log(array);    // logs    [23, 4, 16, 42, 8, 15]

function sum(array) {
  let total = 0;
  for (let i = 0; i < array.length; i++) {
    total += array[i]
  }
  return total;
}

function matrixSums(array) {
  let returnArray = [];
  for (let i = 0; i < array.length; i++) {
    returnArray.push(sum(array[i]));
  }
  return returnArray;
}

// console.log(matrixSums([[2, 8, 5], [12, 48, 0], [12]]));  // returns [15, 60, 12]

function arrayDoesNotContainElement(array, value) {
  for (let i = 0; i < array.length; i++) {
    if (array[i] === value) {
      return false;
    }
  }
  return true;
}

function uniqueElements(array) {
  let uniques = [];
  for (let i = 0; i < array.length; i++) {
    if (arrayDoesNotContainElement(uniques, array[i])) {
      uniques.push(array[i])
    }
  }
  return uniques;
}

console.log(uniqueElements([1, 2, 4, 3, 4, 1, 5, 4]));  // returns [1, 2, 4, 3, 5]