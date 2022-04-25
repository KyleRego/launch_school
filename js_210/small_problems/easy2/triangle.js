function triangle(integer) {
  let numberOfWhiteSpaces = integer - 1;
  while (numberOfWhiteSpaces >= 0) {
    console.log(`${' '.repeat(numberOfWhiteSpaces)}${'*'.repeat(integer-numberOfWhiteSpaces)}`);
    numberOfWhiteSpaces--;
  }
}

triangle(5);

triangle(9);