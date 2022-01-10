class MyCar
  attr_accessor :year, :color, :model

  def initialize(year, color, model)
    self.year = year
    self.color = color
    self.model = model
  end

  def gas_mileage(miles, gallons)
    puts "#{miles.fdiv(gallons)} mpg"
  end

end

my_car = MyCar.new('2000', 'gray', 'corolla')
my_car.gas_mileage(200, 30)
