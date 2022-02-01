module Carryable
  def can_carry?(pounds)
    pounds < 2000
  end
end


class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color, :speed
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
  end

  def to_s
    "Type: #{self.class}, year: #{year}, color: #{color}, model: #{model}, speed: #{speed}"
  end

  def speed_up(difference)
    self.speed += difference
    puts "Increased speed by #{difference}; current speed is now #{speed}"
  end

  def brake(difference)
    self.speed -= difference
    puts "Decreased speed by #{difference}; current speed is now #{speed}"
  end

  def turn_off
    self.speed = 0
    puts "Car is turned off; speed is now #{speed}"
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Car is now color: #{color}"
  end

  def self.gas_mileage(miles, gallons)
    miles.fdiv(gallons)
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2

  include Carryable
end

car = MyCar.new('2005', 'gray', 'Camry')
car.speed_up(10)
car.brake(5)
car.turn_off
car.spray_paint('blue')

puts MyCar.gas_mileage(200, 34)
puts car

truck = MyTruck.new('2006', 'light gray', 'Ridgeline')
puts truck
puts Vehicle.number_of_vehicles

puts MyCar.ancestors
puts ''
puts MyTruck.ancestors