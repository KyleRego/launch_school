function concat(array, ...arguments) {
  let returnArray = array.slice();
  for (let i = 0; i < arguments.length; i++) {
    let valueToAppend = arguments[i];
    if (Array.isArray(valueToAppend)) {
      for (let j = 0; j < valueToAppend.length; j++) {
        returnArray.push(valueToAppend[j]);
      }
    } else {
      returnArray.push(valueToAppend);
    }
  }
  return returnArray;
}

console.log(concat([1, 2, 3], [4, 5, 6], [7, 8, 9]));    // [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(concat([1, 2], 'a', ['one', 'two']));        // [1, 2, "a", "one", "two"]
console.log(concat([1, 2], ['three'], 4));               // [1, 2, "three", 4]