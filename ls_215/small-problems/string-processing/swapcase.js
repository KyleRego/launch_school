function swapCase(string) {
  let swappedString = '';
  for (let i = 0; i < string.length; i += 1) {
    swappedString += swapCaseLetter(string[i]);
  }
  return swappedString;
}

function swapCaseLetter(letter) {
  if (isCapitalLetter(letter)) {
    return letter.toLowerCase();
  } else {
    return letter.toUpperCase();
  }
}

function isCapitalLetter(letter) {
  const CAPITAL_LETTERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  return CAPITAL_LETTERS.includes(letter);
}

console.log(swapCase('CamelCase'));              // "cAMELcASE"
console.log(swapCase('Tonight on XYZ-TV'));      // "tONIGHT ON xyz-tv"