function stringy(integer) {
  returnString = '';
  for (let i = 0; i < integer; i++) {
    if (i % 2 === 0) {
      returnString += '1';
    } else {
      returnString += '0';
    }
  }
  return returnString;
}

console.log(stringy(6));    // "101010"
console.log(stringy(9));    // "101010101"
console.log(stringy(4));    // "1010"
console.log(stringy(7));    // "1010101"