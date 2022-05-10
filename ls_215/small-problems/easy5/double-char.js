// input: a string
// output: the string with every character doubled
// i.e. 'hi' becomes 'hhii'

// algorithm
// make a result string
// iterate through the chars of the input string
//   push onto the result string each char twice
// return the result string

function repeater(string) {
  let result = '';
  for (let i = 0; i < string.length; i+= 1) {
    let char = string[i];
    result += char;
    result += char;
  }
  return result;
}

console.log(repeater('Hello'));
console.log(repeater('Good job!'));
console.log(repeater(''));