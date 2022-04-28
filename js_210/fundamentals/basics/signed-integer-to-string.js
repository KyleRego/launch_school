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

function signedIntegerToString(integer) {
  let prefix;
  if (integer > 0) {
    prefix = '+';
  } else if (integer < 0) {
    prefix = '-';
  } else {
    prefix = '';
  }
  return prefix + integerToString(Math.abs(integer));
}

console.log(signedIntegerToString(4321));
console.log(signedIntegerToString(-123));
console.log(signedIntegerToString(0));
