function makeList() {
  let object = {};
  items = [];
  object.add = function(todo) {
    if (!items.includes(todo)) {
      items.push(todo);
      console.log(`${todo} added!`)
    }
  }
  object.list = function() {
    if (items.length === 0) {
      console.log('The list is empty')
    } else {
      for (let i = 0; i < items.length; i += 1) {
        console.log(items[i]);
      }
    }
  }
  object.remove = function(todo) {
    if (items.includes(todo)) {
      let index = items.indexOf(todo);
      items.splice(index, 1);
      console.log(`${todo} removed!`)
    }
  }
  return object;
}

let list = makeList();
list.add('peas');
list.list();
list.add('corn');
list.list();
list.remove('peas')
list.list();
