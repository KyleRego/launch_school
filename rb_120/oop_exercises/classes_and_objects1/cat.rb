module Walkable
  def walk
    puts 'Let\'s go for a walk!'
  end
end

class Cat
  include Walkable

  attr_accessor :name

  def initialize name
    @name = name
  end

  def greet
    puts "Hello I am a Cat and my name is #{name}"
  end

end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk