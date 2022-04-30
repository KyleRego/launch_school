function halvsies(array) {
  let firstHalf = [];
  let secondHalf = [];
  for (let i = 0; i < array.length; i += 1) {
    if (i < array.length / 2) {
      firstHalf.push(array[i]);
    } else {
      secondHalf.push(array[i]);
    }
  }
  return [firstHalf, secondHalf];
}

console.log(halvsies([1, 2, 3, 4]));       // [[1, 2], [3, 4]]
console.log(halvsies([1, 5, 2, 4, 3]));    // [[1, 5, 2], [4, 3]]
console.log(halvsies([5]));                // [[5], []]
console.log(halvsies([]));                 // [[], []]