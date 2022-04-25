function lastInArray(array) {
  return array[array.length - 1];
}

let array = [1, 2, 3, 4, 5, 6];
console.log(lastInArray(array));

function rollCall(array) {
  for (let i = 0; i < array.length; i++) {
    console.log(array[i]);
  }
}

let names = ['Kyle', 'Ryan', 'Nick', 'Dan', 'Peter'];

rollCall(names);

function reverse(array) {
  newArray = [];
  for (let i = array.length - 1; i >= 0; i--) {
    newArray.push(array[i]);
  }
  return newArray;
}

console.log(reverse(array));

function stringFromArray(array) {
  let string = '';
  for (let i = 0; i < array.length; i++) {
    string += String(array[i]);
  }
  return string;
}

console.log(stringFromArray([1, 'a', 4]));