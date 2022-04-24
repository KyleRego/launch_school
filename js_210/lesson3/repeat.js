function repeat(string, times) {
  if ((! typeof times === Number) || (times < 0)) {
    return undefined;
  } 
  let out_string = '';
  for (let i = 0; i < times; i++) {
    out_string += string;
  }
  return out_string;
}

console.log(repeat('hello world', 3));
console.log(repeat('abc', 1));
console.log(repeat('abc', -1));