function repeatedCharacters(string1) {
  let returnObject = {};
  let string = string1.toLowerCase();
  for (let i = 0; i < string.length; i++) {
    let letter = string[i];
    if (returnObject[letter]) {
      returnObject[letter] += 1;
    } else {
      returnObject[letter] = 1;
    }
  }
  for (let property in returnObject) {
    if (returnObject[property] < 2) {
      delete returnObject[property];
    }
  }
  return returnObject;
}

console.log(repeatedCharacters('Programming'));    // { r: 2, g: 2, m: 2 }
console.log(repeatedCharacters('Combination'));    // { o: 2, i: 2, n: 2 }
console.log(repeatedCharacters('Pet'));            // {}
console.log(repeatedCharacters('Paper'));          // { p: 2 }
console.log(repeatedCharacters('Baseless'));       // { s: 3, e: 2 }