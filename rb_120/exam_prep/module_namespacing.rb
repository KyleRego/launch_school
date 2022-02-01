module MyClasses

  class Animal
    attr_reader :name

    def initialize(name, age)
      @name = name
      @age = age
    end

    def to_s
      "#{name}"
    end
  end
end

animal = MyClasses::Animal.new('Maisie', '2')
puts animal
