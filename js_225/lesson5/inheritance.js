function getDefiningObject(object, propKey) {
  while (object && !object.hasOwnProperty(propKey)) {
    object = Object.getPrototypeOf(object);
  }
  return object;
}

function shallowCopy(object) {
  let parent = Object.getPrototypeOf(object);

  let newObject = Object.create(parent);
  let prop;

  for (prop in object) {
    if (object.hasOwnProperty(prop)) {
      newObject[prop] = object[prop]
    }
  }
  
  return newObject;
}