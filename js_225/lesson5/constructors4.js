function createObject(obj) {
  let ret = {};
  Object.setPrototypeOf(ret, obj);
  return ret;
}

function begetObject() {
  let obj = {};
  Object.setPrototypeOf(obj, this);
  return obj;
}