let shape = {
  getType() {
    return this.type;
  },
  getPerimeter() {
    if (this.getType() === 'triangle') {
      return this.a + this.b + this.c;
    }
  }
}

function Triangle(a, b, c) {
  Object.setPrototypeOf(this, shape);
  this.type = 'triangle';
  this.a = a;
  this.b = b;
  this.c = c;
}
Triangle.prototype.constructor = Triangle;

let t = new Triangle(3, 4, 5);
console.log(t.constructor);                 // Triangle(a, b, c)
console.log(shape.isPrototypeOf(t));        // true
console.log(t.getPerimeter());              // 12
console.log(t.getType());                   // "triangle"