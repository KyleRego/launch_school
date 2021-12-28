SQUARE_FT_PER_SQUARE_METERS = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i
puts "Enter the width of the room in meters:"
width = gets.chomp.to_i
square_meters = length * width
square_feet = square_meters * SQUARE_FT_PER_SQUARE_METERS
puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."