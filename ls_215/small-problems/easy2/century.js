// input: a year (number/integer)
// output: the century ending with the appropriate suffix

console.log(century(1)) // '1st'
console.log(century(100)) // '1st'
console.log(century(101)) // '2nd'
console.log(century(200)) // '2nd'
console.log(century(256)) // '3rd'
console.log(century(1050)) // '11th'
console.log(century(2000)) // '20th'
console.log(century(2001)) // '21st'

function century(year) {
  return centuryNumber(year) + centurySuffix(year);
}

function centuryNumber(year) {
  let integerDivisionResult = Math.floor(year / 100);
  let remainder = year % 100;
  if (remainder === 0) {
    return integerDivisionResult;
  } else {
    return integerDivisionResult + 1;
  }
}

function centurySuffix(year) {
  let century = String(centuryNumber(year));
  if (century.endsWith('11') || century.endsWith('12') || century.endsWith('13')) {
    return 'th'
  } else if (century.endsWith('1')) {
    return 'st'
  } else if (century.endsWith('2')) {
    return 'nd'
  } else if (century.endsWith('3')) {
    return 'rd'
  } else {
    return 'th'
  }
}