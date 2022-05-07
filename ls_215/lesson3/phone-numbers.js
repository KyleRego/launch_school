function cleanPhoneNumber(string) {
  let digits = string.match(/\d/g).join('');
  let len = digits.length;
  if (len === 10) {
    return digits;
  } else if (len === 11 && digits[0] === '1') {
    return digits.slice(1);
  } else {
    return '0000000000'
  }
}

console.log(cleanPhoneNumber('12--3s35dd6-7d8ss93')) // '1233567893'
console.log(cleanPhoneNumber('11111111111111111')) // '0000000000'
console.log(cleanPhoneNumber('12222222222')) // '2222222222'
console.log(cleanPhoneNumber('111')) // '0000000000'