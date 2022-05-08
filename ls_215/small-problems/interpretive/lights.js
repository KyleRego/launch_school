// input: a positive integer, which represents a number of lights which are off to begin with.
// this positive integer is how many times you walk down the lights and switch them
// every pass, you switch lights which satisfy (light position) % (pass number) === 0
// output: an array of numbers representing the light positions which are on after n passes

console.log(lightsOn(2)) // -> [off, off] -> [on, on] -> [on, off] -> [1]
console.log(lightsOn(5)) // [1, 4]
console.log(lightsOn(100)) // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

// algorithm
// declare an array of length n with every element being a 0
// let counter = 0
// while (counter <= n)
//   iterate through the array and switch from 0 to 1 or 1 to 0 if (array index + 1) % (counter + 1) === 0

function lightsOn(n) {
  let arrayOfLights = '0'.repeat(n).split('').map(Number);
  for (let currentPass = 0; currentPass <= n; currentPass += 1) {
    arrayOfLights = arrayOfLights.map((light, currentLightIndex) => {
      if ((currentLightIndex + 1) % (currentPass + 1) === 0) {
        return switchLight(light)
      } else {
        return light
      }
    })
  }

  let onLightIndexes = [];
  arrayOfLights.forEach((light, index) => {
    if (light === 1) {
      onLightIndexes.push(index + 1);
    }
  })
  return onLightIndexes;
}

function switchLight(light) {
  if (light === 0) {
    return 1;
  } else if (light === 1) {
    return 0;
  }
}

 