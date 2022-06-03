let person = {
  firstName: 'Guy',
  lastName: 'Smith'
}

console.log(person.constructor === Object);

let student = Object.create(person);
student.grade = '10th';

console.log(student.constructor === Object);