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
      raise TypeError, "Can only add Todo objects"
    end
  end

  def to_a
    @todos
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

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def done?
    @todos.all? { |todo| todo.done? }
  end

  def <<(new_todo)
    add(new_todo)
  end

  def item_at(index)
    @todos.fetch(index)
  end

  def mark_done_at(index)
    item_at(index).done!
  end

  def mark_undone_at(index)
    item_at(index).undone!
  end

  def each
    @todos.each { |todo| yield(todo) }
    self
  end

  def done!
    each { |todo| todo.done! }
  end

  def remove_at(index)
    @todos.delete_at(index) if item_at(index)
  end

  def to_s
    output = ''
    output += "---- #{title} ----\n"
    @todos.each { |todo| output += "#{todo}\n" }
    output.chomp
  end

  def select
    return_todos = TodoList.new(title)
    @todos.each { |todo| return_todos << todo if yield(todo) }
    return_todos
  end

  def find_by_title(string)
    todo_list = select { |todo| todo.title == string }
    todo_list.first
  end

  def all_done
    select { |todo| todo.done? }
  end

  def all_not_done
    select { |todo| !todo.done? }
  end

  def mark_done(string)
    todo = find_by_title(string)
    todo.done! if todo
  end

  def mark_all_done
    each { |todo| todo.done! }
  end

  def mark_all_undone
    each { |todo| todo.undone! }
  end
end
