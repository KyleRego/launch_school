function stringToInteger(string) {
  const DIGITS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  const chars = string.split('');
  let number = 0;
  for (let i = 0; i < chars.length; i += 1) {
    const digit = DIGITS[chars[i]];
    number += digit * 10 ** (chars.length - i - 1);
  }
  return number;
}

function stringToSignedInteger(string) {
  const firstChar = string[0];
  let isNegative = false;
  let stringy;
  if (firstChar === '-') {
    isNegative = true;
    stringy = string.slice(1);
  } else if (firstChar === '+') {
    stringy = string.slice(1);
  }
  return isNegative ? -1 * stringToInteger(stringy) : stringToInteger(stringy);
}

stringToSignedInteger('4321'); // 4321
stringToSignedInteger('-570'); // -570
stringToSignedInteger('+100'); // 100
