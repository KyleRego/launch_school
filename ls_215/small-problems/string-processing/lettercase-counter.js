function letterCaseCount(string) {
  const lowercaseCount = matchLength(string.match(/[a-z]/g));
  const uppercaseCount = matchLength(string.match(/[A-Z]/g));
  const otherCount = matchLength(string.match(/[^a-zA-Z]/g));
  return { lowercase: lowercaseCount, uppercase: uppercaseCount, neither: otherCount };
}

function matchLength(matchArray) {
  if (matchArray) {
    return matchArray.length;
  } else {
    return 0;
  }
}

console.log(letterCaseCount('abCdef 123'));  // { lowercase: 5, uppercase: 1, neither: 4 }
console.log(letterCaseCount('AbCd +Ef'));    // { lowercase: 3, uppercase: 3, neither: 2 }
console.log(letterCaseCount('123'));         // { lowercase: 0, uppercase: 0, neither: 3 }
console.log(letterCaseCount(''));            // { lowercase: 0, uppercase: 0, neither: 0 }