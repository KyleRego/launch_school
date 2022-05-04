function myMap(array, func) {
  let newArray = [];
  array.forEach((element, index, arr) => {
    newArray.push(func(element, index, arr));
  })
  return newArray;
}

let plusOne = n => n + 1;
console.log(myMap([1, 2, 3, 4], plusOne));       // [ 2, 3, 4, 5 ]