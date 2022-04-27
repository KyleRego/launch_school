function penultimate(string) {
  let array = string.split(' ');
  let length = array.length;
  return array[length - 2];
}

console.log(penultimate('last word'));                    // expected: "last"
console.log(penultimate('Launch School is great!'));      // expected: "is"