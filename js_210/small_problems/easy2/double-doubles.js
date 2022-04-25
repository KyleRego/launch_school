function twice(integer) {
  if (doubleNumber(integer)) {
    return integer;
  } else {
    return integer * 2;
  }
}

function doubleNumber(integer) {
  let string = String(integer);
  if (string.length % 2 === 1) {
    return false;
  }
  let halfLength = string.length / 2;
  let firstHalf = string.slice(0, halfLength);
  let secondHalf = string.slice(halfLength);
  if (firstHalf === secondHalf) {
    return true;
  }
  return false;
}

console.log(twice(37));          // 74
console.log(twice(44));          // 44
console.log(twice(334433));      // 668866
console.log(twice(444));         // 888
console.log(twice(107));         // 214
console.log(twice(103103));      // 103103
console.log(twice(3333));        // 3333
console.log(twice(7676));        // 7676