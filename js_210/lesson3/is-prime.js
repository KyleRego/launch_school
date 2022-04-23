// input: an integer
// output: true or false depending on if that number is prime or not

// algorithm
// for every integer from 2 to half the input integer
//   check if the input integer is divisible by that number
//      if it is, return false
// else return true


function isPrime(number) {
  if (number == 0 || number == 1) {
    return false;
  } 
  for (let i = 2; i < number/2; i++) {
    if (number % i === 0) {
      return false;
    } 
  }
  return true;
}

console.log(isPrime(1));   // false
console.log(isPrime(2));   // true
console.log(isPrime(3));   // true
console.log(isPrime(43));  // true
console.log(isPrime(55));  // false
console.log(isPrime(0));   // false