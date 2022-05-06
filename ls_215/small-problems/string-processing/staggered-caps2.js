function staggeredCase(string) {
  let i = 0;
  let j = 0;
  let result = '';
  while (j < string.length){
    if (isLetter(string[j])) {
      result += (i % 2 === 0) ? string[j].toUpperCase() : string[j].toLowerCase();
      i += 1;
    } else {
      result += string[j];
    }
    j += 1;
  }
  return result;
}

function isLetter(char) {
  return char.match(/[a-z]/i);
}

console.log(staggeredCase('I Love Launch School!'));        // "I lOvE lAuNcH sChOoL!"
console.log(staggeredCase('ALL CAPS'));                     // "AlL cApS"
console.log(staggeredCase('ignore 77 the 444 numbers'));    // "IgNoRe 77 ThE 444 nUmBeRs"