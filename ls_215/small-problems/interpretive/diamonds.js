// input: an odd integer
// output: displays a diamond in a n x n grid
// i.e. if n = 3, outputs:
//  * 
// ***
//  * 

// if n = 5, outputs:
//   *    2 1 2 // j = 0 stars = 2 * j + 1 and spaces = (5 - stars) / 2
//  ***   1 3 1 // j = 1
// *****  0 5 0 // j = 2
//  ***         // j = 1
//   *          // j = 0

// algorithm
// j = 0
// while j < n / 2
//   stars = 2 * j + 1
//   spaces = (5 - stars) / 2
//   console log spaces stars spaces
//   increment j
// console log spaces stars spaces for j at n / 2
// while j > 0
//   do same thing but decrement j each time

function diamond(n) {
  function rowOutput(stars, spaces) {
    console.log(`${' '.repeat(spaces)}${'*'.repeat(stars)}${' '.repeat(spaces)}`)
  }
  let j = 0;
  while (j < n / 2) {
    let stars = 2 * j + 1;
    let spaces = (n - stars) / 2;
    rowOutput(stars, spaces);
    j += 1;
  }
  j -= 2;
  while (j >= 0) {
    let stars = 2 * j + 1;
    let spaces = (n - stars) / 2;
    rowOutput(stars, spaces);
    j -= 1;
  }
}

diamond(9);
diamond(5);
diamond(65);