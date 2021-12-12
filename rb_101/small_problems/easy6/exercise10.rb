


def triangle(n)
  number_asterisks = 1
  number_spaces = n - 1
  n.times do 
    puts ' ' * number_spaces + '*' * number_asterisks 
    number_asterisks += 1
    number_spaces -= 1
  end
end

triangle(5)
triangle(9)