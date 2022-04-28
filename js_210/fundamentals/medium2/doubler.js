function doubler(number, caller) {
  console.log(`This function was called by ${caller}.`);
  return number + number;
}

function makeDoubler(caller) {
  return function(number) {
    return doubler(number, caller);
  }
}

const myFunc = makeDoubler('Kyle');

console.log(myFunc(10));