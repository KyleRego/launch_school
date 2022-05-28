function objectsEqual(object1, object2) {
  for (let prop in object1) {
    if (object1[prop] !== object2[prop]) {
      return false;
    }
  }
  for (let prop in object2) {
    if (object1[prop] !== object2[prop]) {
      return false;
    }
  }
  return true;
}

console.log(objectsEqual({a: 'foo'}, {a: 'foo'}));                      // true
console.log(objectsEqual({a: 'foo', b: 'bar'}, {a: 'foo'}));            // false
console.log(objectsEqual({}, {}));                                      // true
console.log(objectsEqual({a: 'foo', b: undefined}, {a: 'foo', c: 1}));  // false
