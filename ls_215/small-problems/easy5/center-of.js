function centerOf(string) {
  let len = string.length;
  if (len === 0) { return ''; }

  if (len % 2 === 1) {
    return string[(len - 1) / 2];
  } else {
    return string[(len / 2) - 1] + string[len / 2];
  }
}

console.log(centerOf('I Love JavaScript')); // "a"
console.log(centerOf('Launch School'));     // " "
console.log(centerOf('Launch'));            // "un"
console.log(centerOf('Launchschool'));      // "hs"
console.log(centerOf('x'));                 // "x"

// input: a string
// output: the centermost 1 or 2 chars of the string

// algorithm
// if the string if an odd length
// '12345' length = 5, middlemost index = 2 = length -1 /2
//   return string[(length - 1) / 2]
// else if the string is an even length
// '1234' length = 4 middlemost = 1, 2 = length/2 - 1 and length/2
//   return string[(length / 2) - 1] + string[(length / 2)]

