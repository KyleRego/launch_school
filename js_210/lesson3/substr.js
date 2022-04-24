function substr(string, start, length) {
  if (length <= 0) {
    return '';
  }
  if (start < 0) {
    start = string.length + start;
  }
  let newString = '';
  for (let i = start; i < start + length; i++) {
    if (i >= string.length) {
      break;
    }
    newString += string[i];
  }
  return newString;
}

let string = 'hello world';
console.log(substr(string, 2, 4));
console.log(substr(string, -3, 2));
console.log(substr(string, 8, 20));
console.log(substr(string, 0, -20));
console.log(substr(string, 0, 0));
