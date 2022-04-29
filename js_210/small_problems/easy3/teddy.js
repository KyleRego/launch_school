function randomAge() {
  const MIN_AGE = 20;
  const MAX_AGE = 200;
  return MIN_AGE + Math.floor(Math.random() * (MAX_AGE + 1 - MIN_AGE));
}

function printTeddyAge() {
  const age = randomAge();
  console.log(`Teddy is ${age} years old!`);
}

printTeddyAge();
