class Person {
  firstName;
  lastName;
  age;
  gender;

  constructor(firstName, lastName, age, gender) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    this.gender = gender;
  }

  fullName() {
    return `${firstName} ${lastName}`;
  }

  eat() {
    console.log('eating');
  }

  communicate() {
    console.log('communicating');
  }

  sleep() {
    console.log('sleeping');
  }
}

class Doctor extends Person {
  specialization;
}