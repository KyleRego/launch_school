// function myFilter(array, func) {
//   let filteredArray = [];
//   for (let i = 0; i < array.length; i += 1) {
//     if (func(array[i], i, array)) {
//       filteredArray.push(array[i]);
//     } 
//   }
//   return filteredArray;
// }

function myFilter(array, func) {
  let filteredArray = [];
  array.forEach( (element, index, arr) => {
    if (func(element, index, arr)) {
      filteredArray.push(element);
    }
  });
  return filteredArray;
}

let isPythagoreanTriple = function (triple) {
  return Math.pow(triple.a, 2) + Math.pow(triple.b, 2) === Math.pow(triple.c, 2);
};

console.log(myFilter([{ a: 3, b: 4,  c: 5 },
          { a: 5, b: 12, c: 13 },
          { a: 1, b: 2,  c: 3 },], isPythagoreanTriple));