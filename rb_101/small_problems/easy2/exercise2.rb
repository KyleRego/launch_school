# ask the user for a length in meters, get length
# ask the user for a width in meters, get width
# calculate the square meters by multiplying length and width
# calculate the square feet
# display the results

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = length * width

square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."