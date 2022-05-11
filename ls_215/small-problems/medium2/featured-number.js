function isFeaturedNumber(number) {
  return (number % 2 === 1) && (number % 7 === 0) && allDigitsOccurOnce(number);
}

function allDigitsOccurOnce(number) {
  let numberString = String(number);
  let digits = numberString.split('');
  let seenDigits = [];
  for (let i = 0; i < digits.length; i += 1) {
    if (seenDigits.includes(digits[i])) {
      return false;
    } else {
      seenDigits.push(digits[i]);
    }
  }
  return true;
}

function featured(number) {
  const MAXIMUM_FEATURED_NUMBER = 9876543201;
  let possibleFeaturedNumber = number + 1;
  while (true) {
    if (possibleFeaturedNumber > MAXIMUM_FEATURED_NUMBER) {
      return 'There is no possible number that fulfills those requirements.';
    } else if (isFeaturedNumber(possibleFeaturedNumber)) {
      return possibleFeaturedNumber;
    } else {
      possibleFeaturedNumber += 1;
    }
  }
}

console.log(featured(12));           // 21
console.log(featured(20));           // 21
console.log(featured(21));           // 35
console.log(featured(997));          // 1029
console.log(featured(1029));         // 1043
console.log(featured(999999));       // 1023547
console.log(featured(999999987));    // 1023456987
console.log(featured(9876543186));   // 9876543201
console.log(featured(9876543200));   // 9876543201
console.log(featured(9876543201));   // "There is no possible number that fulfills those requirements."