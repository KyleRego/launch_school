# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end


# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(new_todo)
    if new_todo.class == Todo
      @todos << new_todo
    else
      raise TypeError, 'Can only add Todo objects'
    end
    self
  end

  def <<(new_todo)
    self.add(new_todo)
  end

  def size
    @todos.size
  end

  def first
    @todos[0]
  end

  def last
    @todos[-1]
  end

  def to_a
    @todos.to_a.map(&:to_s)
  end

  def done?
    @todos.all? do |todo|
      todo.done?
    end
  end
  
  def item_at(index)
    @todos.fetch(index)
  end

  def mark_done_at(index)
    @todos.fetch(index).done!
  end

  def mark_undone_at(index)
    @todos.fetch(index).undone!
  end

  def done!
    @todos.each do |todo|
      todo.done!
    end
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(index)
    item = @todos.fetch(index)
    @todos.delete_at(index)
    item
  end

  def to_s
    return_string = ''
    return_string += "---- #{title} ----\n"
    @todos.each do |todo|
      return_string += todo.to_s + "\n"
    end
    return_string
  end

  def each
    counter = 0
    while counter < @todos.size
      yield(@todos[counter])
      counter += 1
    end
    self
  end

  def select
    list = TodoList.new(title)
    self.each do |todo|
      list << todo if yield(todo)
    end
    list
  end

  def find_by_title(str)
    results = select do |todo|
      todo.title == str
    end
    results.first
  end

  def all_done
    results = select do |todo|
      todo.done?
    end
    results
  end

  def all_not_done
    results = select do |todo|
      !todo.done?
    end
    results
  end

  def mark_done(str)
    find_by_title(str) && find_by_title(str).done!
  end

  def mark_all_done
    each do |todo|
      todo.done!
    end
  end

  def mark_all_undone
    each do |todo|
      todo.undone!
    end
  end
end


todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

list.mark_done("Buy milk")

puts list.all_done
puts list.all_not_done

list.mark_all_done

puts list

list.mark_all_undone

puts list