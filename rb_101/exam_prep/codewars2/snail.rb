# input: a height, a distance moved up, and a distance moved down per day
# output: how many days it takes to reach the height

# initialize distance_traveled to be 0
# number_of_days = 0
# loop do
#   distance_traveled += day
#   number_of_days += 1
#   break if distance_traveled > height
#   distance_traveled -= night
# end
# return number_of_days

def snail(column, day, night)
  distance_traveled = 0
  number_of_days = 0
  loop do
    distance_traveled += day
    number_of_days += 1
    break if distance_traveled >= column
    distance_traveled -= night
  end
  number_of_days
end

p snail(3, 2, 1)
p snail(10, 3, 1)
p snail(100, 20, 5)