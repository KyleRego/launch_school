function negative(integer) {
  if (integer >= 0) {
    return -1 * integer;
  } else {
    return integer;
  }
}

console.log(negative(5));     // -5
console.log(negative(-3));    // -3
console.log(negative(0));     // -0