function reverse(inputForReversal) {
  let output;
  if (Array.isArray(inputForReversal)) {
    output = [];
  } else {
    output = '';
  }

  for (let i = inputForReversal.length - 1; i >= 0; i--) {
    if (Array.isArray(output)) {
      output.push(inputForReversal[i]);
    } else {
      output += inputForReversal[i];
    }
  }
  return output;
}

console.log(reverse('Hello'));
console.log(reverse('a'));
console.log(reverse([1, 2, 3, 4]));
console.log(reverse([]));

const array = [1, 2, 3];
reverse(array);
console.log(array);