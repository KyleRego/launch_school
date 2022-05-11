let storedFibonaccis = {};

function fibonacci(n) {
  if (n === 1) {
    return 1;
  } else if (n === 2) {
    return 1;
  } else if (storedFibonaccis[n]) {
    return storedFibonaccis[n];
  } else {
    let previousByTwo = fibonacci(n-2);
    let previousByOne = fibonacci(n-1);
    storedFibonaccis[n-2] = previousByTwo;
    storedFibonaccis[n-1] = previousByOne;

    return previousByTwo + previousByOne;
  }
}

for (let i = 1; i < 20; i += 1) {
  console.log(fibonacci(i));
}
