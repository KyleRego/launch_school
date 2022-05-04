function octalToDecimal(octalString) {
  const digits = octalString.split('');
  const digitValues = digits.reverse().map((element, index) => {
    return parseInt(element, 10) * 8 ** index;
  })
  return digitValues.reduce((accumulator, currentValue) => {
    return accumulator + currentValue;
  })
}

console.log(octalToDecimal('1'));           // 1
console.log(octalToDecimal('10'));          // 8
console.log(octalToDecimal('130'));         // 88
console.log(octalToDecimal('17'));          // 15
console.log(octalToDecimal('2047'));        // 1063
console.log(octalToDecimal('011'));         // 9