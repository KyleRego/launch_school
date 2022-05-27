function newStack() {
  let values = []
  return {
    push(newValue) {
      values.push(newValue);
    },
    pop() {
      values.pop();
    },
    printStack() {
      for (let i = 0; i < values.length; i += 1) {
        console.log(values[i]);
      }
    }
  }
}

let myStack = newStack();
myStack.push(1);
myStack.push(2);
myStack.push(3);
myStack.printStack();
myStack.pop();
myStack.printStack();
