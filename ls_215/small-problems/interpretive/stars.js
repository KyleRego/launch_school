// input: n (odd integer, and the smallest possible is 7)
// output: console log a star pattern in a n x n grid

// i.e.
// star(7)
// *  *  * i = 0 spacesLeft = 0 spacesMid = 2 
//  * * *  i = 1 spacesLeft = 1 spacesMid = 1
//   ***   i = 2 spacesLeft = 2 spacesMid = 0
// ******* i = 3 all stars
//   ***   i = 2
//  * * *  i = 1
// *  *  * i = 0

// star(9)
// *   *   * i = 0 spacesLeft = 0 spacesMid = 3
//  *  *  *  i = 1 spacesLeft = 1 spacesMid = 2
//   * * *   i = 2 spacesLeft = 2 spacesMid = 1
//    ***    i = 3 spacesLeft = 3 spacesMid = 0
// ********* i = 4 all stars for i = (n-1)/2
//    ***
//   * * *   i = 2
//  *  *  *  i = 1
// *   *   * i = 0

// spacesLeft = i
// n = spacesLeft * 2 + 3 + 2 * spacesMid => spacesMid = (n - 3 - 2*spacesLeft) / 2

function outputRow(spacesLeft, spacesMid) {
  console.log(`${' '.repeat(spacesLeft)}*${' '.repeat(spacesMid)}*${' '.repeat(spacesMid)}*`);
}

function star(n) {
  let i = 0;
  while (i < ((n - 1) / 2)) {
    let spacesLeft = i;
    let spacesMid = (n - 3 - 2 * spacesLeft) / 2;
    outputRow(spacesLeft, spacesMid);
    i += 1
  }
  console.log('*'.repeat(n));
  i -= 1;
  while (i >= 0) {
    let spacesLeft = i;
    let spacesMid = (n - 3 - 2 * spacesLeft) / 2;
    outputRow(spacesLeft, spacesMid);
    i -= 1;
  }
}

star(7);
star(9);
star(79);