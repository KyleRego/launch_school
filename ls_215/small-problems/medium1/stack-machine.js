function minilang(stringOfOperations) {
  const operations = stringOfOperations.split(' ');
  let stack = [];
  let register = 0;

  operations.forEach(operation => {
    if (isNumber(operation)) {
      register = Number(operation);
    } else if (operation === 'PUSH') {
      stack.push(register);
    } else if (operation === 'ADD') {
      register += stack.pop();
    } else if (operation === 'SUB') {
      register -= stack.pop();
    } else if (operation === 'MULT') {
      register *= stack.pop();
    } else if (operation === 'DIV') {
      let value = stack.pop();
      register = Math.floor(register / value);
    } else if (operation === 'REMAINDER') {
      register = register % stack.pop();
    } else if (operation === 'POP') {
      register = stack.pop();
    } else if (operation === 'PRINT') {
      console.log(register);
    }
  })
}

function isNumber(character) {
  return !Number.isNaN(Number(character));
}


minilang('PRINT');
// 0

minilang('5 PUSH 3 MULT PRINT');
// 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT');
// 5
// 3
// 8

minilang('5 PUSH POP PRINT');
// 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT');
// 5
// 10
// 4
// 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT');
// 6

minilang('4 PUSH PUSH 7 REMAINDER MULT PRINT');
// 12

minilang('-3 PUSH 5 SUB PRINT');
// 8

minilang('6 PUSH');
// (nothing is printed because the `program` argument has no `PRINT` commands)