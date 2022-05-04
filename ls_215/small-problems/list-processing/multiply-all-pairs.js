function multiplyAllPairs(array1, array2) {
  let returnArray = [];
  array1.forEach(number1 => {
    array2.forEach(number2 => {
      returnArray.push(number1 * number2)
    })
  })
  return returnArray.sort((a, b) => a - b);
}

console.log(multiplyAllPairs([2, 4], [4, 3, 1, 2]));    // [2, 4, 4, 6, 8, 8, 12, 16]