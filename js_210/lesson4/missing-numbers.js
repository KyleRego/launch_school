// input: a sorted array of numbers (array)
// ouput: an array that has all the integers missing from array

// get the lowest integer in array
// get the highest integer in array
// make an array of all the integers from lowest to highest
// iterate over this new array and if array.indexOf(element) === -1
//   then push that element onto a return array
// return return array

function missing(array){
  let lowest = array[0];
  let highest = array[array.length - 1];
  let allNumbers = [];
  for (let i = lowest; i <= highest; i++) {
    allNumbers.push(i);
  }
  let returnArray = [];
  for (let i = 0; i < allNumbers.length; i++) {
    if (array.indexOf(allNumbers[i]) === -1) {
      returnArray.push(allNumbers[i]);
    }
  }
  return returnArray;
}

console.log(missing([-3, -2, 1, 5]));
console.log(missing([1, 2, 3, 4]));                    // []
console.log(missing([1, 5]));                          // [2, 3, 4]
console.log(missing([6]));