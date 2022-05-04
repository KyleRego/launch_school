function sumOfSums(numberArray) {
  let copy = numberArray;
  let sum = 0;
  while (copy.length >= 1) {
    sum += sumArray(copy);
    copy.pop();
  }
  return sum;
}

function sumArray(numberArray) {
  return numberArray.reduce((accumulator, currentValue) => {
    return accumulator + currentValue;
  })
}

console.log(sumOfSums([3, 5, 2]));        // (3) + (3 + 5) + (3 + 5 + 2) --> 21
console.log(sumOfSums([1, 5, 7, 3]));     // (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) --> 36
console.log(sumOfSums([4]));              // 4
console.log(sumOfSums([1, 2, 3, 4, 5]));  // 35