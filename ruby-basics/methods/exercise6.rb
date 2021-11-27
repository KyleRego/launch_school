daylight = [true, false].sample

def time_of_day(bool_argument)
  if bool_argument 
    puts "It's daytime"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)