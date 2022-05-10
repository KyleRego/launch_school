function doubleConsonants(string) {
  let result = '';
  for (let i = 0; i < string.length; i+= 1) {
    let char = string[i];
    if (!'aeiou0123456789 -!.,;:"'.includes(char)) {
      result += char;
      result += char;
    } else {
      result += char;
    }
    
  }
  return result;
}


console.log(doubleConsonants('String'));          // "SSttrrinngg"
console.log(doubleConsonants('Hello-World!'));    // "HHellllo-WWorrlldd!"
console.log(doubleConsonants('July 4th'));        // "JJullyy 4tthh"
console.log(doubleConsonants(''));                // ""