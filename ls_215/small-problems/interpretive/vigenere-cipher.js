// input: two strings, the first is plaintext and the second is keyword
// output: the vigenere cipher encryption of plaintext using the keyword

console.log(vigenereCipher('Pineapples don\'t go on pizzas!', 'meat'));
// => Bmnxmtpeqw dhz'x gh ar pbldal!
console.log(vigenereCipher('Dog', 'Rabbit')) // => Uoh

function vigenereCipher(plaintext, keyword) {
  let i = 0; // for iterating through plaintext
  let j = 0; // for iterating through keyword
  let result = '';
  while (i < plaintext.length) {
    result += caesarCharacterEncryption(plaintext[i], letterToCaesarCipherKey(keyword[j]));
    i += 1;
    if (!isNotALetter(plaintext[i])) {
      j += 1;
    }
    if (j === keyword.length) {
      j = 0;
    }
  }
  return result;
}

console.log(letterToCaesarCipherKey('B')); // 1

function letterToCaesarCipherKey(letter) {
  const lowerCaseLetter = letter.toLowerCase();
  const alphabet = 'abcdefghijklmnopqrstuvwxyz';
  return alphabet.indexOf(lowerCaseLetter);
}

console.log(caesarCharacterEncryption('a', 2)); // 'c'
console.log(caesarCharacterEncryption('b', 26)); // 'b'
console.log(caesarCharacterEncryption('z', 1)); // 'a'

function caesarCharacterEncryption(character, key) {
  if (isNotALetter(character)) {
    return character;
  }
  let alphabet = 'abcdefghijklmnopqrstuvwxyz';
  if (isUpperCaseLetter(character)) {
    alphabet = alphabet.toUpperCase();
  }
  let index = alphabet.indexOf(character) + key;
  if (index > alphabet.length - 1) {
    index -= alphabet.length;
  }
  return alphabet[index];
}

console.log(isNotALetter('a')); // false
console.log(isNotALetter('?')); // true

function isNotALetter(character) {
  const re = /[^a-zA-Z]/;
  return re.test(character);
}

console.log(isUpperCaseLetter('A')); // true
console.log(isUpperCaseLetter('z')); // false

function isUpperCaseLetter(letter) {
  const re = /[A-Z]/;
  return re.test(letter);
}

