function isValidTriangle(a, b, c) {
  return a > 0 && b > 0 && c > 0 && (a + b + c) === 180;
}

function isRightTriangle(a, b, c) {
  return a === 90 || b === 90 || c === 90;
}

function isObtuseTriangle(a, b, c) {
  return a > 90 || b > 90 || c > 90;
}

function triangle(a, b, c) {
  if (!isValidTriangle(a, b, c)) {
    return 'invalid'
  } else if (isRightTriangle(a, b, c)) {
    return 'right'
  } else if (isObtuseTriangle(a, b, c)) {
    return 'obtuse'
  } else {
    return 'acute'
  }
}

console.log(triangle(60, 70, 50));       // "acute"
console.log(triangle(30, 90, 60));       // "right"
console.log(triangle(120, 50, 10));      // "obtuse"
console.log(triangle(0, 90, 90));        // "invalid"
console.log(triangle(50, 50, 50));       // "invalid"