function makeCounterLogger(integer1) {
  return function(integer2) {
    if (integer2 > integer1) {
      for (let i = integer1; i <= integer2; i += 1) {
        console.log(i);
      }
    } else if (integer2 < integer1) {
      for (let i = integer1; i >= integer2; i -= 1) {
        console.log(i)
      }
    }
    
  }
}

let countlog = makeCounterLogger(5);

countlog(8);

countlog(2);
