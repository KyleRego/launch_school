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

stringToInteger('123');
