module Swimmable
  def swim
    puts "#{self} is swimming!"
  end
end

class Family
  attr_reader :people, :pets

  def initialize
    @people = []
    @pets = []
  end
  
  def to_s
    "People: #{people.join(', ')}, Pets: #{pets.join(', ')}"
  end

  def <<(new_family_member)
    if new_family_member.class == Human
      people << new_family_member
    elsif new_family_member.class.ancestors.include?(Pet)
      pets << new_family_member
    end
  end
end

class FamilyMember
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "#{name}"
  end
end

class Human < FamilyMember
end

class Pet < FamilyMember
end

class Dog < Pet
  include Swimmable
end

class Cat < Pet
end

class Fish < Pet
  include Swimmable
end

family = Family.new
kyle = Human.new('Kyle', '25')
maisie = Dog.new('Maisie', '2')
family << kyle
family << maisie
puts family
maisie.swim