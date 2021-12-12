# get 6 numbers from the user
# loop over the first 5 numbers, checking each one if it is the sixth number

def number_in_array?(number, number_array)
  for num in number_array
    if num == number
      return true
    end
  end

  false
end

number_array = []

puts 'Enter the 1st number:'
number_array << gets.chomp.to_i

puts 'Enter the 2nd number:'
number_array << gets.chomp.to_i

puts 'Enter the 3rd number:'
number_array << gets.chomp.to_i

puts 'Enter the 4th number:'
number_array << gets.chomp.to_i

puts 'Enter the 5th number:'
number_array << gets.chomp.to_i

puts 'Enter the last number:'
number_to_look_for = gets.chomp.to_i

if number_in_array?(number_to_look_for, number_array)
  puts "The number #{number_to_look_for} appears in #{number_array}."
else
  puts "The number #{number_to_look_for} does not appear in #{number_array}."
end
