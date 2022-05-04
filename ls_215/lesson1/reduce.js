function myReduce(array, func, initial) {
  let accumulator;
  let firstIndex;

  if (initial === undefined) {
    accumulator = array[0];
    firstIndex = 1;
  } else {
    accumulator = initial;
    firstIndex = 0;
  }

  for (let i = firstIndex; i < array.length; i += 1) {
    accumulator = func(accumulator, array[i], i, array);
  }
  return accumulator;
}

let smallest = (result, value) => (result <= value ? result : value);
let sum = (result, value) => result + value;

console.log(myReduce([5, 12, 15, 1, 6], smallest));           // 1
console.log(myReduce([5, 12, 15, 1, 6], sum, 10));            // 49

let count = [1, 2, 3, 4, 5];
let add = (number1, number2) => number1 + number2;

console.log(myReduce(count, add));