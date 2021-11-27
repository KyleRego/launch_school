def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do

  number_one = nil
  number_two = nil

  loop do
    puts "Please enter a positive or negative integer:"
    user_input = gets.chomp
    if valid_number?(user_input)
      number_one = user_input.to_i
      break
    end
    puts "Invalid input. Only non-zero integers are allowed."
  end

  loop do
    puts "Please enter a positive or negative integer:"
    user_input = gets.chomp
    if valid_number?(user_input)
      number_two = user_input.to_i
      break
    end
    puts "Invalid input. Only non-zero integers are allowed."
  end

  if (number_one > 0 && number_two < 0) || (number_one < 0 && number_two > 0)
    puts "#{number_one} + #{number_two} = #{number_one + number_two}"
    break
  else
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
  end
end



