function union(array1, array2) {
  let newArray = [];
  for (let i = 0; i < array1.length; i += 1) {
    newArray.push(array1[i]);
  }
  for (let i = 0; i < array2.length; i += 1) {
    if (!newArray.includes(array2[i])) {
      newArray.push(array2[i]);
    }
  }
  return newArray;
}

console.log(union([1, 3, 5], [3, 6, 9]));    // [1, 3, 5, 6, 9]
