// input: a string of space separated words
// output: an object that has the number of words of different sizes
// the keys of the object are word sizes
// and the values are how many strings with that many chars were in the input

// algorithm
// declare result to be an empty object
// split the string into an array of words
// map the array of words into letter counts
// iterate through the letter counts array
//   if result[letter count]
//     result[letter count] += 1
//   else
//     result[letter count] = 1

const LOWERCASE_LETTERS = 'abcdefghijklmnopqrstuvwxyz'

function wordToLetterCount(word) {
  let sum = 0
  word = word.toLowerCase();
  word.split('').forEach(letter => {
    if (LOWERCASE_LETTERS.includes(letter)) {
      sum += 1;
    }
  })
  return sum;
}

function wordSizes(words) {
  if (words === '') { return {}; }
  let result = {};
  let arrayOfWords = words.split(' ');
  let letterCounts = arrayOfWords.map(wordToLetterCount);
  letterCounts.forEach(count => {
    if (result[count]) {
      result[count] += 1;
    } else {
      result[count] = 1;
    }
  })
  return result;
}

console.log(wordSizes('hello world')) // { "5": 2 }
console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 2 }
console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 3 }
console.log(wordSizes("What's up doc?"));                              // { "5": 1, "2": 1, "3": 1 }
console.log(wordSizes(''));                                            // {}