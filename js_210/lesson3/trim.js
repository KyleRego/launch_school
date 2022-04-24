// function trim(aString) {
//   let i = 0;
//   while (aString[i] === ' ') {
//     aString = aString.split('');
//     aString[i] = '';
//     aString = aString.join('');
//   }
//   i = aString.length - 1;
//   while (aString[i] === ' ') {
//     aString = aString.split('');
//     aString[i] = '';
//     aString = aString.join('');
//   }
//   return aString;
// }

function trim(string) {
  returnString = '';
  let i = 0;
  while (string[i] === ' ') {
    i++;
  }
  let j = string.length - 1;
  while (string[j] === ' ') {
    j--;
  }
  for (; i <= j; i++) {
    returnString += string[i];
  }
  return returnString;
}

console.log(trim('  abc  '));
console.log(trim('abc   '));
console.log(trim(' ab c'));
console.log(trim(' a b  c'));
console.log(trim('    '));
console.log(trim(''));
