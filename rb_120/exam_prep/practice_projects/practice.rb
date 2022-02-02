module Swimmable
  def swim
    puts "#{name} is swimming!"
  end
end

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def move
    puts "#{name} is moving!"
  end
end

class Dog < Animal
  include Swimmable

  def move
    puts "A dog named #{name} is moving!"
  end
end

class Cat < Animal

end

class Fish < Animal
  include Swimmable

end

dog = Dog.new('Maisie')
cat = Cat.new('Butterscotch')

animals = [dog, cat]

animals.each { |animal| animal.move }

fish = Fish.new('Goldfish')
swimming_animals = [dog, fish]

swimming_animals.each { |animal| animal.swim }

class MathStuff
  def self.division(a, b)
    begin
      result = a / b
    rescue ZeroDivisionError
      puts 'Cannot divide by zero; result set to string undefined'
      result = 'undefined'
    end
    result
  end
end

divide = MathStuff.division(4, 0)
puts divide

module SomeClasses
  class ClassNumberOne
    def self.what_class_is_this
      puts self
    end
  end
end

SomeClasses::ClassNumberOne.what_class_is_this