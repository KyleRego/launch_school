class Person
  attr_accessor :age, :name

  def initialize(age, name)
    self.age = age
    self.name = name
  end

  def to_s
    "Person with name #{self.name} and age #{self.age}."
  end

end

kyle = Person.new(25, 'Kyle')
puts kyle