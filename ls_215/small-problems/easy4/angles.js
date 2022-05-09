// input: a floating point number that represents an angle between 0 and 360 degrees
// output: a string representing that angle in degrees, minutes, and seconds

// there are 60 minutes in a degree, and 60 seconds in a minute

// algorithm
// convert the input into a number in seconds by multipling by 60 twice and rounding to nearest whole number
// get the number of degrees by Math.floor(whole number / 3600) and the remaining seconds by whole number % 3600
// get the number of minutes by Math.floor(remainder/60) and the number of seconds by remainder % 60

function dms(angle) {
  let totalSeconds = Math.round(angle * 60 * 60);
  let degrees = Math.floor(totalSeconds / 3600);
  let remainder = totalSeconds % 3600;
  let minutes = Math.floor(remainder/60);
  let seconds = remainder % 60;
  return `${degrees} degrees ${minutes} minutes ${seconds} seconds`
}

console.log(dms(30));           // 30°00'00"
console.log(dms(76.73));        // 76°43'48"
console.log(dms(254.6));        // 254°35'59"
console.log(dms(93.034773));    // 93°02'05"
console.log(dms(0));            // 0°00'00"
console.log(dms(360));          // 360°00'00" or 0°00'00"