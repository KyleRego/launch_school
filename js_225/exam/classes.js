class Person {
  constructor(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  fullName() {
    return this.firstName + ' ' + this.lastName;
  }
}

class Student extends Person {
  constructor(firstName, lastName, grade) {
    super(firstName, lastName);
    this.grade = grade;
  }

  introduce() {
    console.log(this.fullName() + ' is in grade ' + this.grade);
  }
}

const student = new Student('Guy', 'Smith', '10th');
student.introduce();
console.log(student.constructor === Student); // true
console.log(student instanceof Student); // true
console.log(student instanceof Person); // true

console.log(Person.prototype.constructor === Person); // true