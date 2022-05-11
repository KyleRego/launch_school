function sumSquareDifference(n) {
  return squareOfTheSum(n) - sumOfTheSquares(n);
}

function squareOfTheSum(n) {
  let sum = 0;
  for (let i = 1; i <= n; i += 1) {
    sum += i;
  }
  return Math.pow(sum, 2);
}

function sumOfTheSquares(n) {
  let sum = 0;
  for (let i = 1; i <= n; i += 1) {
    sum += Math.pow(i, 2);
  }
  return sum;
}

console.log(sumSquareDifference(3));      // 22 --> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
console.log(sumSquareDifference(10));     // 2640
console.log(sumSquareDifference(1));      // 0
console.log(sumSquareDifference(100));    // 25164150