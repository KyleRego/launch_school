// input: a string of words separated by spaces
// output: the input string but with the first and last letters of each word swapped

// algorithm
// split the words string into an array of words
// map the words array into a new array of words where the first and last letters are swapped
// return the array joined with a space

function swapFirstAndLastLetters(word) {
  return word[word.length - 1] + word.slice(1, word.length - 1) + word[0];
}

function swap(words) {
  return words.split(' ').map(swapFirstAndLastLetters).join(' ');
}

console.log(swap('hello world')) // 'oellh dorlw'
console.log(swap('Oh what a wonderful day it is'));  // "hO thaw a londerfuw yad ti si"
console.log(swap('Abcde'));                          // "ebcdA"
console.log(swap('a'));                              // "a"