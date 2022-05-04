let pets = {
  cat: 'Simon',
  dog: 'Dwarf',
  mice: null,
};

function objectHasProperty(object, property) {
  for (let key in object) {
    if (key === property) {
      return true;
    }
  }
  return false;
}

// console.log(objectHasProperty(pets, 'dog'));       // true
// console.log(objectHasProperty(pets, 'lizard'));    // false
// console.log(objectHasProperty(pets, 'mice'));      // true

let wins = {
  steve: 3,
  susie: 4,
};

function incrementProperty(object, string) {
  if (objectHasProperty(object, string)) {
    object[string] += 1;
  } else {
    object[string] = 1;
  }
  return object[string];
}

// console.log(incrementProperty(wins, 'susie'));   // 5
// console.log(wins);                               // { steve: 3, susie: 5 }
// console.log(incrementProperty(wins, 'lucy'));    // 1
// console.log(wins);                               // { steve: 3, susie: 5, lucy: 1 }

let hal = {
  model: 9000,
  enabled: true,
};

function copyProperties(object1, object2) {
  let numberOfPropertiesCopied = 0;
  for (let key in object1) {
    if (!object2[key]) {
      object2[key] = object1[key]
      numberOfPropertiesCopied += 1;
    }
  }
  return numberOfPropertiesCopied;
}

// let sal = {};
// console.log(copyProperties(hal, sal));  // 2
// console.log(sal);                       // { model: 9000, enabled: true }

function wordCount(words) {
  const wordArray = words.split(' ');
  let returnObject = {};
  wordArray.forEach(word => {
    incrementProperty(returnObject, word);
  });
  return returnObject;
}

console.log(wordCount('box car cat bag box'));  // { box: 2, car: 1, cat: 1, bag: 1 }
