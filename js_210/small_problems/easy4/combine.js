function interleave(array1, array2) {
  let combined = [];
  for (let i = 0; i < array1.length; i += 1) {
    combined.push(array1[i]);
    combined.push(array2[i]);
  }
  return combined;
}

console.log(interleave([1, 2, 3], ['a', 'b', 'c']));    // [1, "a", 2, "b", 3, "c"]