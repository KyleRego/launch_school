module Honkable
  def honk
    puts "honk"
  end
end

class Vehicle
  @@number_of_objects = 0

  attr_accessor :year, :color, :model, :speed

  def initialize(y, c, m)
    self.year = y
    self.color = c
    self.model = m
    self.speed = 0
    @@number_of_objects += 1
  end

  def print_speed
    puts "The vehicle's speed is #{speed}."
  end

  def speed_up(difference)
    self.speed += difference
  end

  def brake(difference)
    self.speed -= difference
  end

  def self.how_many
    puts "There are #{@@number_of_objects} made using the Vehicle initialize method"
  end

  def print_age
    puts "The vehicle's age is #{age} years."
  end

  private

  def age
    Time.now.year - self.year.to_i
  end
end

class MyCar < Vehicle
  MILES_PER_GALLON = 20
end

class Truck < Vehicle
  include Honkable

  MILES_PER_GALLON = 25
end

camry = MyCar.new('2020', 'gray', 'camry')
camry.speed_up(100)
camry.print_speed

truck = Truck.new('2015', 'gray', 'ridgeline')
truck.honk
truck.print_age
# p truck.age => will throw an error due to calling a private method outside the class

Vehicle.how_many

# p Vehicle.ancestors
# p MyCar.ancestors
# p Truck.ancestors