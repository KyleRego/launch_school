function swapName(name) {
  let splitName = name.split(' ');
  let firstName = splitName[0];
  let lastName = splitName[1];
  return `${lastName}, ${firstName}`;
}

console.log(swapName('Joe Roberts'));    // "Roberts, Joe"