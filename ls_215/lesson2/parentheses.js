function isBalanced(string) {
  let tracker = 0;
  for (let i = 0; i < string.length; i += 1) {
    if (string[i] === '(') {
      tracker += 1
    } else if (string[i] === ')') {
      tracker -= 1;
    }
    if (tracker < 0) {
      return false;
    }
  }
  return tracker === 0;
}

console.log(isBalanced('What (is) this?'));        // true
console.log(isBalanced('What is) this?'));         // false
console.log(isBalanced('What (is this?'));         // false
console.log(isBalanced('((What) (is this))?'));    // true
console.log(isBalanced('((What)) (is this))?'));   // false
console.log(isBalanced('Hey!'));                   // true
console.log(isBalanced(')Hey!('));                 // false
console.log(isBalanced('What ((is))) up('));       // false