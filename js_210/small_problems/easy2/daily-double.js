function crunch(string) {
  let lastChar = '';
  let newString = '';
  for (let i = 0; i < string.length; i++) {
    if (string[i] !== lastChar) {
      newString += string[i];
      lastChar = string[i];
    }
  }
  return newString;
}

console.log(crunch('dddaaaiiilllyyy dooouuubblllee'));
console.log(crunch('4444abcabccba'));
console.log(crunch('ggggggggggggg'));
console.log(crunch('a'));
console.log(crunch(''));