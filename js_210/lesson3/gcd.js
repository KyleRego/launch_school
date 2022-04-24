function gcd(integer1, integer2) {
  let common_divisor = 1;
  let max_integer_to_check = Math.max(integer1, integer2);
  for (let i = 2; i <= max_integer_to_check; i++) {
    if ((integer1 % i === 0) && (integer2 % i === 0)) {
      common_divisor = i;
    }
  }
  return common_divisor;
}

console.log(gcd(12, 4));
console.log(gcd(15, 10));
console.log(gcd(9, 2));