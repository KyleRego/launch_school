function makeList() {
  let list = [];
  return function(todo) {
    if (todo === undefined) {
      if (list.length === 0) {
        console.log('The list is empty')
      } else {
        list.forEach(element => console.log(element));
      }
    }
    else if (list.includes(todo)) {
      let index = list.indexOf(todo);
      list.splice(index, 1);
      console.log(`${todo} removed!`)
    } else {
      list.push(todo)
      console.log(`${todo} added!`)
    }
  }
}

let list = makeList();
list();
list('make breakfast');
list('read book');
list();
list('make breakfast');
list();
