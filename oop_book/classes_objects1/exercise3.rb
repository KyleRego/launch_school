class MyCar
  attr_accessor :year, :model, :color

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @speed = 0
  end

  def spray_paint(color)
    @color = color
  end

  def display_car_color
    puts "The car's color is #{@color}."
  end
end

my_car = MyCar.new('2020', 'gray', 'camry')
my_car.spray_paint('blue')
my_car.display_car_color