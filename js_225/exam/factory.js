function createPerson(firstName, lastName) {
  return {
    firstName,
    lastName,
  }
}

let person = createPerson('Guy', 'Smith');

console.log(person.constructor === Object); // true