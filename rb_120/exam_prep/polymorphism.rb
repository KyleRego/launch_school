class Person
  def move
    puts "#{self.class} is moving"
  end
end

class Dog
  def move
    puts "Now a dog is moving"
  end
end


person = Person.new
dog = Dog.new

[person, dog].each do |obj|
  obj.move
end
