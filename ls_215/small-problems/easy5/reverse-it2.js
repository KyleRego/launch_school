// input: string containing one or more words separated by spaces
// output: the same string, but with all words that are 5 letters or more reversed

// algorithm
// split the input string into an array of words
// map the array of words into a new array of words where only words 5 or greater chars are reversed
// return the mapped array joined by spaces

function reverseIfGreaterThanFive(word) {
  if (word.length >= 5) {
    return word.split('').reverse().join('');
  } else {
    return word;
  }
}

function reverseWords(words) {
  let arrayOfWords = words.split(' ');
  let partiallyReversedWords = arrayOfWords.map(reverseIfGreaterThanFive);
  return partiallyReversedWords.join(' ');
}

console.log(reverseWords('Professional'));             // "lanoisseforP"
console.log(reverseWords('Walk around the block'));    // "Walk dnuora the kcolb"
console.log(reverseWords('Launch School'));            // "hcnuaL loohcS"