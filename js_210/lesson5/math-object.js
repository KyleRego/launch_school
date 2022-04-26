function radiansToDegrees(radians) {
  return radians * 180 / Math.PI;
}

function makePositive(number) {
  return Math.abs(number);
}

function random(min, max) {
  if (max < min) {
    [min, max] = [max, min];
  } else if (min === max) {
    return min;
  }

  return min + Math.floor(Math.random()*(max - min + 1));
}