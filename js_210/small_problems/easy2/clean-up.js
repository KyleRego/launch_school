function isLetter(character) {
  return character.toUpperCase() !== character.toLowerCase();
}

function removeExtraSpaces(string) {
  let newString = '';
  for (let i = 0; i < string.length; i++) {
    if (string[i] === ' ' && string[i+1] === ' ') {
      // do nothing
    } else {
      newString += string[i];
    }
  }
  return newString;
}

function cleanUp(string) {
  let newString = '';
  for (let i = 0; i < string.length; i++) {
    let char = string[i];
    if (isLetter(char)) {
      newString += char;
    } else {
      newString += ' ';
    }
  }
  return removeExtraSpaces(newString);
}

console.log(cleanUp("---what's my +*& line?") === ' what s my line ');    // " what s my line "