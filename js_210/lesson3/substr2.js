function substring(string, start, end) {
  if (start > end) {
    let holder = start;
    start = end;
    end = holder;
  }
  if (start === end) {
    return '';
  }
  if (end === undefined) {
    end = string.length;
  }
  if (start < 0 || Number.isNaN(Number(start))) {
    start = 0;
  }
  if (end < 0 || Number.isNaN(Number(end))) {
    end = 0;
  }
  if (start > string.length) {
    start = string.length;
  }
  if (end > string.length) {
    end = string.length;
  }
  let substring = '';
  for (let i = start; i < end; i++) {
    substring += string[i];
  }
  return substring;
}

let string = 'hello world';

console.log(substring(string, 2, 4));    // "ll"
console.log(substring(string, 4, 2));    // "ll"
console.log(substring(string, 0, -1));   // ""
console.log(substring(string, 2));       // "llo world"
console.log(substring(string, 'a'));     // "hello world"
console.log(substring(string, 8, 20));   // "rld"