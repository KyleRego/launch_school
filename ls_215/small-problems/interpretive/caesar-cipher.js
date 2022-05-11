function caesarEncrypt(plaintext, key) {
  let result = '';
  for (let i = 0; i < plaintext.length; i += 1) {
    result += caesarEncryptLetter(plaintext[i], key);
  }
  return result;
}

// input: a character (one letter string) and a key (integer)
// output: the character rotated key to the right in the alphabet, possibly wrapping

// algorithm
// if the character is not a letter, return it


function caesarEncryptLetter(character, key) {
  if (isNotALetter(character)) {
    return character;
  }
  let alphabet = 'abcdefghijklmnopqrstuvwxyz';
  if (isUpperCaseLetter(character)) {
    alphabet = alphabet.toUpperCase();
  }
  let index = alphabet.indexOf(character);
  index += key;
  if (index > alphabet.length - 1) {
    index -= alphabet.length;
  }
  return alphabet[index];
}

function isNotALetter(character) {
  let alphabet = 'abcdefghijklmnopqrstuvwxyz';
  let doubleAlphabet = alphabet.concat(alphabet.toUpperCase());
  return !doubleAlphabet.includes(character);
}

function isUpperCaseLetter(letter) {
  return 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.includes(letter);
}

// simple shift
console.log(caesarEncrypt('A', 0));       // "A"
console.log(caesarEncrypt('A', 3));       // "D"

// wrap around
console.log(caesarEncrypt('y', 5));       // "d"
console.log(caesarEncrypt('a', 47));      // "v"

// all letters
console.log(caesarEncrypt('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 25));
// "ZABCDEFGHIJKLMNOPQRSTUVWXY"
console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', 5));
// "Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl!"

// many non-letters
console.log(caesarEncrypt('There are, as you can see, many punctuations. Right?; Wrong?', 2));
// "Vjgtg ctg, cu aqw ecp ugg, ocpa rwpevwcvkqpu. Tkijv?; Ytqpi?"