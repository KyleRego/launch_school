function isPalindromicNumber(number) {
  let numberString = String(number);
  return isPalindrome(numberString);
}

function isPalindrome(string) {
  const reversed = string.split('').reverse().join('');
  return string === reversed;
}

console.log(isPalindromicNumber(34543));        // true
console.log(isPalindromicNumber(123210));       // false
console.log(isPalindromicNumber(22));           // true
console.log(isPalindromicNumber(5));            // true
