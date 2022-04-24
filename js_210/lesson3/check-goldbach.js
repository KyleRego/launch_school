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

// get an array of all the prime numbers up to sum
// for every prime number in primes
//   check if adding that prime number to one of the rest of primes equals sum
//     if it does, append that pair to pairs
function checkGoldbach(sum) {
  let primes = [];
  for (let i = 1; i <= sum; i++) {
    if (isPrime(i)) {
      primes.push(i);
    }
  }
  let pairs = [];
  for (let i = 0; i < primes.length; i++) {
    let prime1 = primes[i]
    for (let j = i; j < primes.length; j++) {
      let prime2 = primes[j]
      if ((prime1 + prime2) === sum) {
        pairs.push([prime1, prime2]);
      }
    }
  }
  if (pairs.length === 0) {
    console.log(null)
  } else {
    for (let i = 0; i < pairs.length; i++) {
      console.log(`${pairs[i][0]} ${pairs[i][1]}`)
    }
  }
}

checkGoldbach(3);
checkGoldbach(4);
checkGoldbach(12);
checkGoldbach(100);