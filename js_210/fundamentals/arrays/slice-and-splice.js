function slice(array, beginIndex, endIndex) {
  let newArray = [];
  for (let i = beginIndex; i < endIndex && i < array.length; i++) {
    newArray.push(array[i]);
  }
  return newArray;
}

// console.log(slice([1, 2, 3], 1, 2));
// console.log(slice([1, 2, 3], 2, 0));
// console.log(slice([1, 2, 3], 5, 1));
// console.log(slice([1, 2, 3], 0, 5));

// const arr1 = [1, 2, 3];
// console.log(slice(arr1, 1, 3));
// console.log(arr1);


// inserts element at index of array shifting over later elements, and mutates array
// algorithm
// set holder equal to the value being replaced at index
// replace that value with the element
// set element equal to holder
// repeat for index + i until index + i is equal to the length of the array minus 1
function insertAt(array, element, index) {
  let holder;
  let originalLength = array.length;
  for (let i = 0; index + i <= originalLength; i++) {
    holder = array[index + i];
    array[index + i] = element;
    element = holder;
  }
}

function splice(array, start, deleteCount, ...elements) {
  let originalLength = array.length;
  if (start > array.length) {
    start = array.length;
  }
  if (deleteCount > array.length - start) {
    deleteCount = array.length - start;
  }
  let deletedElements = [];
  for (let i = start; i < start + deleteCount; i++) {
    deletedElements.push(array[i]);
    array[i] = array[i+deleteCount];
  }
  for (let i = 0; i < elements.length; i++) {
    insertAt(array, elements[i], start+i);
  }
  array.length = originalLength - deleteCount + elements.length;
  return deletedElements;
}

console.log(splice([1, 2, 3], 1, 2));              // [2, 3]
console.log(splice([1, 2, 3], 1, 3));              // [2, 3]
console.log(splice([1, 2, 3], 1, 0));              // []
console.log(splice([1, 2, 3], 0, 1));              // [1]
console.log(splice([1, 2, 3], 1, 0, 'a'));         // []

const arr2 = [1, 2, 3];
console.log(splice(arr2, 1, 1, 'two'));             // [2]
console.log(arr2);                                  // [1, "two", 3]

const arr3 = [1, 2, 3];
console.log(splice(arr3, 1, 2, 'two', 'three'));    // [2, 3]
console.log(arr3);                                  // [1, "two", "three"]

const arr4 = [1, 2, 3];
console.log(splice(arr4, 1, 0));                    // []
console.log(splice(arr4, 1, 0, 'a'));               // []
console.log(arr4);                                  // [1, "a", 2, 3]

const arr5 = [1, 2, 3];
console.log(splice(arr5, 0, 0, 'a'));               // []
console.log(arr5);                                  // ["a", 1, 2, 3]