class Pet
  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{@type} named #{@name}"
  end

end

class Owner
  attr_accessor :name, :number_of_pets

  def initialize(name)
    @name = name
    @pets = []
    @number_of_pets = 0
  end

  def adopt(pet)
    @pets << pet
    @number_of_pets += 1
  end

  def to_s
    "#{name}"
  end

end

class Shelter

  def initialize
    @adoptions = {}
  end

  def adopt(owner, pet)
    owner.adopt(pet)
    if @adoptions[owner]
      @adoptions[owner] << pet
    else
      @adoptions[owner] = [pet]
    end
  end

  def print_adoptions
    @adoptions.each do |owner, pet_list|
      puts "#{owner} has adopted the following pets:"
      pet_list.each do |pet|
        puts pet
      end
      puts ""
    end
  end
end




butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."