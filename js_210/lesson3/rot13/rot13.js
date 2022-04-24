function translateLetterBy13(letter) {

  const translater = function(alphabet, letter) {
    const ALPHABET_LENGTH = alphabet.length;
    const ROTATE_BY = 13;
    for (let i = 0; i < ALPHABET_LENGTH; i++) {
      if (alphabet[i] === letter) {
        if ((ALPHABET_LENGTH - 1) < i + ROTATE_BY) {
          return alphabet[i + ROTATE_BY - ALPHABET_LENGTH];
        } else {
          return alphabet[i + ROTATE_BY];
        }
      }
    }
    return letter;
  }
  const uppercaseAlphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  let newLetter = translater(uppercaseAlphabet, letter);
  if (newLetter === letter) {
    const lowercaseAlphabet = 'abcdefghijklmnopqrstuvwxyz';
    newLetter = translater(lowercaseAlphabet, letter);
  }
  return newLetter
}

function rot13(string) {
  returnString = '';
  for (let i = 0; i < string.length; i++) {
    returnString += translateLetterBy13(string[i]);
  }
  return returnString;
}

console.log(rot13(rot13('Teachers open the door, but you must enter by yourself.')));