class MyCar
  attr_accessor :year, :color, :model, :speed

  def initialize(y, c, m)
    self.year = y
    self.color = y
    self.model = m
    self.speed = 0
  end

  def speed_up
    self.speed += 10
  end

  def brake
    self.speed -= 10
  end

  def turn_off
    self.speed = 0
  end
end

my_car = MyCar.new('2020', 'gray', 'camry')
my_car.speed_up
my_car.speed_up
p my_car

