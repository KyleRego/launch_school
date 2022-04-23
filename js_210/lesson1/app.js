function average(arrayOfNumbers) {
  return sum(arrayOfNumbers) / arrayOfNumbers.length
}

function sum(arrayOfNumbers) {
  let currentSum = 0
  for (let index = 0; index < arrayOfNumbers.length; index++) {
    currentSum += arrayOfNumbers[index];
  }
  return currentSum
}

console.log(average([4, 4, 6]));