module MyClasses
  class Animal
    @@number_of_animals = 0

    attr_reader :name

    def initialize(name)
      @name = name
      @@number_of_animals += 1
    end

    def self.number_of_animals
      puts "There are #{@@number_of_animals} animals."
    end

    def sleep
      puts "#{name} is sleeping."
    end

    def to_s
      name
    end
  end

  class Dog < Animal
    def play(game)
      puts "#{name} is playing #{game}!"
    end
  end

  class Cat < Animal
    def nap
      puts "#{name} is taking a nap."
    end
  end
end

maisie = MyClasses::Dog.new('Maisie')
maisie.play('catch')

kitty = MyClasses::Cat.new('Oreo')
kitty.nap

MyClasses::Animal.number_of_animals

animals = [maisie, kitty]
animals.each { |animal| animal.sleep }