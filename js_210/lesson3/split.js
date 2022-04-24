function splitString(string, delimiter) {
  if (delimiter === undefined) {
    console.log('ERROR: No delimiter');
    return;
  }
  if (delimiter === '') {
    for (let i = 0; i < string.length; i++) {
      console.log(string[i]);
    }
    return;
  }

  let indexes_of_delimiter = [];
  for (let i = 0; i < string.length; i++) {
    if (string[i] === delimiter) {
      indexes_of_delimiter.push(i);
    }
  }
  
  let outString = '';
  for (let i = 0; i < string.length; i++) {
    if (array_contains_value(indexes_of_delimiter, i)) {
      console.log(outString);
      outString = '';
    } else {
      outString += string[i];
    }
  }
  if (outString !== '') {
    console.log(outString);
  }
  
}

function array_contains_value(array, value) {
  for (let i = 0; i < array.length; i++) {
    if (array[i] === value) {
      return true;
    }
  }
  return false;
}

splitString('abc,123,hello world', ',');
splitString('hello');
splitString('hello', '');
splitString('hello', ';');
splitString(';hello;', ';');