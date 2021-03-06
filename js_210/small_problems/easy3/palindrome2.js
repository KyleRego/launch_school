function isRealPalindrome(string) {
  const reversedCopy = lettersOnly(string.toLowerCase().split('').reverse().join(''));
  return lettersOnly(string.toLowerCase()) === reversedCopy;
}

function lettersOnly(string) {
  return string.replace(/[^A-Za-z]/g, '');
}

console.log(isRealPalindrome('madam'));               // true
console.log(isRealPalindrome('Madam'));               // true (case does not matter)
console.log(isRealPalindrome("Madam, I'm Adam"));     // true (only alphanumerics matter)
console.log(isRealPalindrome('356653'));              // true
console.log(isRealPalindrome('356a653'));             // true
console.log(isRealPalindrome('123ab321'));            // false
