function createStudent(name, year) {
  let student = {
    name,
    year,
    courses: [],
  };
  student.info = function() {
    console.log(`${this.name} is a ${this.year} year student.`);
  };
  student.addCourse = function(course) {
    this.courses.push(course);
  };
  student.listCourses = function() {
    console.log(this.courses);
  };
  student.addNote = function(code, note) {
    let selectedCourse = this.courses.filter(course => course.code === code)[0];
    if (selectedCourse.note) {
      selectedCourse.note += note;
    } else {
      selectedCourse.note = note;
    }
  };
  student.updateNote = function(code, note) {
    let selectedCourse = this.courses.filter(course => course.code === code)[0];
    selectedCourse.note = note;
  };
  student.viewNotes = function() {
    console.log(this.courses);
  };
  return student;
}

let foo = createStudent('Foo', '1st');
foo.info();
// "Foo is a 1st year student"
foo.listCourses();
// [];
foo.addCourse({ name: 'Math', code: 101 });
foo.addCourse({ name: 'Advanced Math', code: 102 });
foo.listCourses();
// [{ name: 'Math', code: 101 }, { name: 'Advanced Math', code: 102 }]
foo.addNote(101, 'Fun course');
foo.addNote(101, 'Remember to study for algebra');
foo.viewNotes();
// "Math: Fun course; Remember to study for algebra"
foo.addNote(102, 'Difficult subject');
foo.viewNotes();
// "Math: Fun course; Remember to study for algebra"
// "Advance Math: Difficult subject"
foo.updateNote(101, 'Fun course');
foo.viewNotes();
// "Math: Fun course"
// "Advanced Math: Difficult subject"