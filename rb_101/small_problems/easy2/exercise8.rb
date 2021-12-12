def sum_from_one(number)
  sum = 0
  for num in (0..number)
    sum += num
  end
  sum
end

def multiply_from_one(number)
  total = 1
  for num in (1..number)
    total *= num
  end
  total
end

puts 'Please enter an integer greater than 0:'
number = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

if choice == 's'
  puts "The sum of the integers between 1 and #{number} is #{sum_from_one(number)}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{number} is #{multiply_from_one(number)}."
end
