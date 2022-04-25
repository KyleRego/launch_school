function logInBox(string) {
  let innerWidth = string.length + 2;
  console.log(`+${'-'.repeat(innerWidth)}+`);
  console.log(`|${' '.repeat(innerWidth)}|`);
  console.log(`| ${string} |`);
  console.log(`|${' '.repeat(innerWidth)}|`);
  console.log(`+${'-'.repeat(innerWidth)}+`);
}

logInBox('To boldly go where no one has gone before.');
logInBox('');
