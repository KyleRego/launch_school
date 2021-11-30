def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

number_one = nil
number_two = nil

loop do
  puts "Please enter the numerator:"
  number_one = gets.chomp
  if valid_number?(number_one)
    break
  end
  puts "Invalid input. Only integers are allowed."
end

loop do
  puts "Please enter the denominator:"
  number_two = gets.chomp
  if number_two == "0"
    puts "Invalid input. A denominator of 0 is not allowed."
    next
  elsif valid_number?(number_two)
    break
  end
  puts "Invalid input. Only integers are allowed."
end

result = number_one.to_i / number_two.to_i 

puts "#{number_one} / #{number_two} is #{result}"