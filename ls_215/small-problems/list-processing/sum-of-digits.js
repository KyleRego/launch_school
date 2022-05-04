function sum(number) {
  const digits = number.toString().split('').map(digit => parseInt(digit, 10));
  return digits.reduce((accumulator, currentValue) => accumulator + currentValue);
}

console.log(sum(23));           // 5
console.log(sum(496));          // 19
console.log(sum(123456789));    // 45