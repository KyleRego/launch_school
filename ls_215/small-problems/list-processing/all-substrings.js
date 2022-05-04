function substrings(string) {
  let result = [];
  for (let i = 0; i < string.length; i += 1) {
    for (let j = i + 1; j < string.length + 1; j += 1) {
      result.push(string.slice(i, j))
    }
  }
  return result;
}

console.log(substrings('abcde'));
