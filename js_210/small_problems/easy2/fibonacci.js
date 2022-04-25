function nthFibonacci(n){
  if (n === 1n) {
    return 1n;
  } else if (n === 2n) {
    return 1n;
  } else {
    return nthFibonacci(n-1n) + nthFibonacci(n-2n);
  }
}

function findFibonacciIndexByLength(digits) {
  let i = 1n;
  while (String(nthFibonacci(i)).length < digits) {
    i += 1n;
  }
  return i;
}

console.log(findFibonacciIndexByLength(2n) === 7n);
console.log(findFibonacciIndexByLength(3n) === 12n);
// console.log(findFibonacciIndexByLength(10n) === 45n);