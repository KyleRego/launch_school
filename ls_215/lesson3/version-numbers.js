// input: two version numbers in the format x.y.z as strings
// input may just be like x
// output: null if either version contains characters other than digits and the . character
// 1, -1, or 0 depending on if version1 >, <, === version2

// algorithm
// return null if either is not valid
// split the version numbers by . into arrays of numbers
// if one of the arrays is shorter than the other, pad with 0s until they are the same length
// let i = 0 and while i < length of array
//   if num1 > num2 return 1
//   if num1 < num2 return -1
//   else continue iterating

function isValidVersionNumber(version) {
  if (!version.match(/^[0-9]+(\.[0-9]+)*$/)) {
    return false;
  } else {
    return true;
  }
}

function padWithZeros(arr1, arr2) {
  while (arr2.length < arr1.length) {
    arr2.push('0');
  }
  while (arr1.length < arr2.length) {
    arr1.push('0')
  }
  return [arr1, arr2];
}

function compareVersions(version1, version2) {
  if (!isValidVersionNumber(version1) || !isValidVersionNumber(version2)) {
    return null;
  }
  let arr1 = version1.split('.');
  let arr2 = version2.split('.');
  if (arr1.length !== arr2.length) {
    [arr1, arr2] = padWithZeros(arr1, arr2);
  }
  let i = 0;
  while (i < arr1.length) {
    let num1 = parseInt(arr1[i], 10);
    let num2 = parseInt(arr2[i], 10);
    if (num1 > num2) {
      return 1;
    } else if (num1 < num2) {
      return -1;
    }
    i += 1;
  }
  return 0;
}

console.log(compareVersions('1', '1'));            // 0
console.log(compareVersions('1.1', '1.0'));        // 1
console.log(compareVersions('2.3.4', '2.3.5'));    // -1
console.log(compareVersions('1.a', '1'));          // null
console.log(compareVersions('.1', '1'));           // null
console.log(compareVersions('1.', '2'));           // null
console.log(compareVersions('1..0', '2.0'));       // null
console.log(compareVersions('1.0', '1.0.0'));      // 0
console.log(compareVersions('1.0.0', '1.1'));      // -1
console.log(compareVersions('1.0', '1.0.5'));      // -1