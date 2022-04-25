function shift(array) {
  if (array.length === 0) {
    return undefined;
  }
  let returnValue = array[0];
  for (let i = 0; i < array.length - 1; i++) {
    array[i] = array[i+1];
  }
  array.length = array.length - 1;
  return returnValue;
}

// let array = [1, 2, 3, 4, 5];
// console.log(shift(array));
// console.log(array);

function unshift(array, value) {
  for (let i = array.length - 1; i >= 0; i--) {
    array[i+1] = array[i];
  }
  array[0] = value;
  return array.length;
}

let array = [2, 3, 4, 5];
console.log(unshift(array, 1));
console.log(array);