// nput: three numbers which represent the side lengths of a possible triangle
// output: one of the strings "equilateral" "isosceles" "scalene" "invalid"

function isValidTriangle(a, b, c) {
  return (a + b) > c && (a + c) > b && (b + c) > a && a !== 0 && b !== 0 && c !== 0;
}

function isEquilateralTriangle(a, b, c) {
  return (a === b) && (b === c) && (a === c);
}

function isScaleneTriangle(a, b, c) {
  return (a !== b) && (b !== c) && (a !== c);
}

function triangle(a, b, c) {
  if (!isValidTriangle(a, b, c)) {
    return 'invalid'
  } else if (isEquilateralTriangle(a, b, c)) {
    return 'equilateral'
  } else if (isScaleneTriangle(a, b, c)) {
    return 'scalene'
  } else {
    return 'isosceles'
  }
}

console.log(triangle(3, 3, 3));        // "equilateral"
console.log(triangle(3, 3, 1.5));      // "isosceles"
console.log(triangle(3, 4, 5));        // "scalene"
console.log(triangle(0, 3, 3));        // "invalid"
console.log(triangle(3, 1, 1));        // "invalid"