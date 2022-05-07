// input: a string of letters
// output: true or false depending on if the word can be spelled using the blocks

const BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
                ['N', 'A'], ['G', 'T'], ['F', 'S'], ['R', 'E'],
                ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
                ['Z', 'M']]
function isRepeatIndex(arrayOfIndexes) {
  let foundIndexes = [];
  for (let i = 0; i < arrayOfIndexes.length; i += 1) {
    if (foundIndexes.includes(arrayOfIndexes[i])) {
      return true;
    } else {
      foundIndexes.push(arrayOfIndexes[i]);
    }
  }
  return false;
}

function isBlockWord(string) {
  let uppercaseString = string.toUpperCase();
  let chars = uppercaseString.split('');
  let blockIndexes = [];
  chars.forEach(char => {
    BLOCKS.forEach((block, blockIndex) => {
      if (block.includes(char)) {
        blockIndexes.push(blockIndex);
      }
    })
  })
  if (isRepeatIndex(blockIndexes)) {
    return false;
  } else {
    return true;
  }
}

console.log(isBlockWord('BATCH'));      // true
console.log(isBlockWord('BUTCH'));      // false
console.log(isBlockWord('jest'));       // true