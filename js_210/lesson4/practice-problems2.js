function firstElementOf(arr) {
  return arr[0];
}

// console.log(firstElementOf(['U', 'S', 'A']));  // returns "U"

function lastElementOf(arr) {
  return arr[arr.length - 1];
}

// console.log(lastElementOf(['U', 'S', 'A']));

function nthElementOf(arr, index) {
  return arr[index];
}

// let digits = [4, 8, 15, 16, 23, 42];

// digits[-1] = -42;
// console.log(nthElementOf(digits, -1));
// console.log(digits[-1]);
// console.log(digits['-1']);    // Note that we are using a string here
// console.log(digits);

// console.log(nthElementOf(digits, 3));   // returns 16
// console.log(nthElementOf(digits, 8));   // what does this return?
// console.log(nthElementOf(digits, -1));  // what does this return?

// let arr = [1, 2, 3, 4];
// arr[-1] = 'hello world'
// console.log(arr);

function firstNOf(arr, count) {
  newArray = [];
  for (let i = 0; i < count; i ++) {
    newArray.push(arr[i]);
  }
  return newArray;
}

// let digits = [4, 8, 15, 16, 23, 42];
// console.log(firstNOf(digits, 3));    // returns [4, 8, 15]

function lastNOf(arr, count) {
  let index = arr.length - count;
  if (index < 0) {
    index = 0;
  }
  return arr.slice(index);
}

// let digits = [4, 8, 15, 16, 23, 42];
// console.log(lastNOf(digits, 3));    // returns [16, 23, 42]

function endsOf(beginningArr, endingArr) {
  let newArray = [];
  newArray.push[beginningArr[0]];
  newArray.push(endingArr[endingArr.length - 1]);
  return newArray;
}