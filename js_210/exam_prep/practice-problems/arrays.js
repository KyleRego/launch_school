function push(array, value) {
  array[array.length] = value;
  return array.length;
}

function pop(array) {
  if (array.length === 0) {
    return undefined;
  }
  const lastElement = array[array.length - 1];
  array.length = array.length - 1;
  return lastElement;
}