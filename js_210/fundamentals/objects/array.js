const myArray = [5, 5];
myArray[-1] = 5;
myArray[-2] = 5;

function average(array) {
  let sum = 0;

  for (let i = -2; i < array.length; i += 1) {
    sum += array[i];
  }

  return sum / trueLength(array);
}

function trueLength(array) {
  let length = 0;
  for (let property in array) {
    length += 1;
  }
  return length;
}

console.log(average(myArray));