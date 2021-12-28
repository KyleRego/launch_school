HELPER = ['1st', '2nd', '3rd', '4th', '5th']

number_array = []
5.times do |index|
  puts "Enter the #{HELPER[index]} number:"
  num = gets.chomp.to_i
  number_array << num
end

puts "Enter the last number:"
number = gets.chomp.to_i

if number_array.include?(number)
  puts "The number #{number} appears in #{number_array}."
else
  puts "The number #{number} does not appear in #{number_array}."
end
