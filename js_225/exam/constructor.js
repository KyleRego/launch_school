function Person(firstName, lastName) {
  this.firstName = firstName;
  this.lastName = lastName;
}

let person = new Person('Guy', 'Smith');

console.log(person.constructor === Person);

Person.prototype.logFullName = function() {
  console.log(this.firstName + ' ' + this.lastName);
}

person.logFullName();

console.log(Person.prototype.constructor === Person);