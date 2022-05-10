// input: a string 
// output: an object with the percentages of characters that are lowercase, uppercase, or neither
// algorithm
//   declare a lowercaseCounter, uppercaseCounter, and neitherCounter to all be 0
//   iterate through each char of the string and increment one of the counters accordingly
//   declare lowercasePercentage = lowercaseCounter / sum of the three counters .toFixed(2)
//   do same for uppercase and neither
//   return object

function letterPercentages(string) {
  const UPPERCASE_LETTERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const LOWERCASE_LETTERS = UPPERCASE_LETTERS.toLowerCase();
  let uppercaseCounter = 0;
  let lowercaseCounter = 0;
  let neitherCounter = 0;
  for (let i = 0; i < string.length; i += 1) {
    let char = string[i];
    if (UPPERCASE_LETTERS.includes(char)) {
      uppercaseCounter += 1;
    } else if (LOWERCASE_LETTERS.includes(char)) {
      lowercaseCounter += 1;
    } else {
      neitherCounter += 1;
    }
  }
  let total = lowercaseCounter + uppercaseCounter + neitherCounter;
  let uppercasePercentage = (100 * uppercaseCounter / total).toFixed(2);
  let lowercasePercentage = (100 * lowercaseCounter / total).toFixed(2);
  let neitherPercentage = (100 * neitherCounter / total).toFixed(2);
  return { lowercase: lowercasePercentage, uppercase: uppercasePercentage, neither: neitherPercentage};
}

console.log(letterPercentages('abCdef 123'));
// { lowercase: "50.00", uppercase: "10.00", neither: "40.00" }

console.log(letterPercentages('AbCd +Ef'));
// { lowercase: "37.50", uppercase: "37.50", neither: "25.00" }

console.log(letterPercentages('123'));
// { lowercase: "0.00", uppercase: "0.00", neither: "100.00" }