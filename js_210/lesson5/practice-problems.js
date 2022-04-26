function objectHasProperty(object, string) {
  return object[string] !== undefined;
}

// let pets = {
//   cat: 'Simon',
//   dog: 'Dwarf',
//   mice: null,
// };

// console.log(objectHasProperty(pets, 'dog'));       // true
// console.log(objectHasProperty(pets, 'lizard'));    // false
// console.log(objectHasProperty(pets, 'mice'));      // true

function incrementProperty(object, string) {
  if (objectHasProperty(object, string)) {
    object[string] += 1;
  } else {
    object[string] = 1;
  }
  return object[string];
}

// let wins = {
//   steve: 3,
//   susie: 4,
// };

// console.log(incrementProperty(wins, 'susie'));   // 5
// console.log(wins);                               // { steve: 3, susie: 5 }
// console.log(incrementProperty(wins, 'lucy'));    // 1
// console.log(wins);                               // { steve: 3, susie: 5, lucy: 1 }

function copyProperties(fromObject, toObject) {
  let counter = 0;
  for (let property in fromObject) {
    toObject[property] = fromObject[property];
    counter++;
  }
  return counter;
}

// let hal = {
//   model: 9000,
//   enabled: true,
// };

// let sal = {};
// console.log(copyProperties(hal, sal));  // 2
// console.log(sal);                       // { model: 9000, enabled: true }

function countInArray(array, value) {
  let count = 0;
  for (let i = 0; i < array.length; i++) {
    let arrayValue = array[i];
    if (value === arrayValue) {
      count++;
    }
  }
  return count;
}

function wordCount(string) {
  let keys = string.split(' ');
  let object = {};
  for (let i = 0; i < keys.length; i++) {
    word = keys[i];
    object[word] = countInArray(keys, word);
  }
  return object;
}

console.log(wordCount('box car cat bag box'));  // { box: 2, car: 1, cat: 1, bag: 1 }