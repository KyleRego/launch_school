function toLowerCase(string) {
  let newString = '';
  for (let i = 0; i < string.length; i++) {
    if (characterIsCapitalLetter(string[i])) {
      let asciiNumeric = string[i].charCodeAt(0);
      asciiNumeric += 32;
      newString += String.fromCharCode(asciiNumeric);
    } else {
      newString += string[i];
    }
  }
  return newString;
}

function characterIsCapitalLetter(character) {
  let letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  for (let i = 0; i < letters.length; i++) {
    if (letters[i] === character) {
      return true;
    }
  }
  return false;
}

console.log(toLowerCase('ABC'));
console.log(toLowerCase('123ABC'));
console.log(toLowerCase('abcABC'));