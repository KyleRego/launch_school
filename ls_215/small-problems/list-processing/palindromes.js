function substrings(string) {
  let result = [];
  for (let i = 0; i < string.length; i += 1) {
    for (let j = i + 1; j < string.length + 1; j += 1) {
      result.push(string.slice(i, j))
    }
  }
  return result;
}

function isPalindrome(string) {
  return (string.split('').reverse().join('') === string) && string.length !== 1;
}

function palindromes(string) {
  const subs = substrings(string);
  const pals = subs.filter(sub => {
    return isPalindrome(sub);
  });
  return pals;
}

console.log(palindromes('abcd'));
console.log(palindromes('madam'));
console.log(palindromes('hello-madam-did-madam-goodbye'));
console.log(palindromes('knitting cassettes'));
