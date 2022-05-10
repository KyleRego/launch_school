// input: an array of strings
// output: log to the console each string and how many times it appears in the array

// algorithm
// declare an empty hash
// iterate through the passed in array
//   if it is a key in the hash increment its hash value by 1
//   else make it a key with a value of 1
// iterate through the hash and log to the console each key and value

const vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
'motorcycle', 'motorcycle', 'car', 'truck'];

function countOccurrences(arrayOfStrings) {
  let countHash = {};
  arrayOfStrings.forEach(string => {
    if (countHash[string]) {
      countHash[string] += 1;
    } else {
      countHash[string] = 1;
    }
  })
  Object.keys(countHash).forEach(key => {
    console.log(`${key} => ${countHash[key]}`)
  })
}

countOccurrences(vehicles);

// console output
// car => 4
// truck => 3
// SUV => 1
// motorcycle => 2