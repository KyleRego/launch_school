// function makeMultipleLister(integer) {

//   return function() {
//     for (let i = integer; i < 100; i += integer) {
//       console.log(i);
//     }
//   }
// }

// let lister = makeMultipleLister(13);
// lister();

let total = 0;

function add(number) {
  total += number;
  console.log(total);
}

function subtract(number) {
  total -= number;
  console.log(total);
}
