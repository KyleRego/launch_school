let foo = {};
let bar = foo;

let a = 10;
let b = a;

foo.a = a;
foo.b = foo.a;

a += 10;
foo.a += 10;

b === a;         // false
foo.a === bar.a; // true
console.log(foo === bar);