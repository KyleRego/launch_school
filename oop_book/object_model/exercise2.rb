module Speak
  def say(something)
    puts something
  end
end

class Dog
  include Speak
end

maisie = Dog.new

maisie.say('hello')