function pop(array) {
  if (array.length === 0) {
    return undefined;
  }
  let returnValue = array[array.length - 1];
  array.length = array.length - 1;
  return returnValue;
}

// pop
// const array1 = [1, 2, 3];
// console.log(pop(array1));                        // 3
// console.log(array1);                             // [1, 2]
// console.log(pop([]));                           // undefined
// console.log(pop([1, 2, ['a', 'b', 'c']]));      // ["a", "b", "c"]

function push(array, ...values) {
  for (let i = 0; i < values.length; i++) {
    array[array.length] = values[i];
  }
  return array.length;
}

let array = [1, 2, 3, 4, 5];
console.log(push(array, 6));
console.log(array);

const array2 = [1, 2, 3];
console.log(push(array2, 4, 5, 6));
console.log(array2);