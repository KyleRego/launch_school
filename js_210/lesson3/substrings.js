function indexOf(firstString, secondString) {
  for (let i = 0; i < firstString.length; i++) {
    if (isSubstringAtIndex(firstString, secondString, i)) {
      return i;
    }
  }
  return -1;
}

function lastIndexOf(firstString, secondString) {
  let indexes = [];
  for (let i = 0; i < firstString.length; i++) {
    if (isSubstringAtIndex(firstString, secondString, i)) {
      indexes.push(i)
    }
  }
  if (indexes.length === 0) {
    return -1;
  } else {
    return indexes[indexes.length - 1];
  }
}

// checks if childString is in parentString starting at index
function isSubstringAtIndex(parentString, childString, index) {
  let childIndex = 0
  for (let i = index; i < index + childString.length; i++) {
    if (parentString[i] !== childString[childIndex]) {
      return false;
    }
    childIndex++;
  }
  return true;
}

console.log(indexOf('Some strings', 's'));
console.log(indexOf('Blue Whale', 'Whale'));
console.log(indexOf('Blue Whale', 'Blute'));
console.log(indexOf('Blue Whale', 'leB'));

console.log(lastIndexOf('Some strings', 's'));
console.log(lastIndexOf('Blue Whale, Killer Whale', 'Whale'));
console.log(lastIndexOf('Blue Whale, Killer Whale', 'all'));