const DIGIT_HASH = {
  zero: 0,
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9
}

function wordToDigit(words) {
  for (let key in DIGIT_HASH) {
    let re = RegExp(key, 'gi')
    words = words.replace(re, DIGIT_HASH[key]);
  }
  return words;
}

console.log(wordToDigit('Please call me at five five five one two three four. Thanks.'));
// "Please call me at 5 5 5 1 2 3 4. Thanks."