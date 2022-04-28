function integerToString(integer) {
  let result = '';
  let number = integer;
  while (Math.floor(number / 10) !== 0) {
    const append = number % 10;
    result += append;
    number = Math.floor(number / 10);
  }
  result += integer % 10;
  return result.split('').reverse().join('');
}

console.log(integerToString(4321));
console.log(integerToString(0));
console.log(integerToString(5000));
