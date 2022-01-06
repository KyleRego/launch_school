class MyCar
  attr_accessor :speed, :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  def show_speed
    puts "The car is now traveling at a speed of #{speed}"
  end

  def speed_up(difference)
    self.speed += difference
    show_speed
  end

  def brake(difference)
    self.speed -= difference
    show_speed
  end

  def turn_off
    self.speed = 0
    puts "The car is now turned off"
  end
end

camry = MyCar.new('2020', 'gray', 'camry')
camry.speed_up(10)
camry.speed_up(20)
camry.brake(10)
camry.brake(20)
camry.turn_off