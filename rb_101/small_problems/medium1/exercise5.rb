# input: an odd integer n
# output: displays a 4-pointed diamond in an n x n grid

# counter = 1
# while counter <= n
#   middle = '*' * counter
#   print middle.center(n)
#   counter += 2
# while counter >= 1
#   middle = '*' * counter
#   print middle.center(n)
#   counter -= 2

def diamond(n)
  counter = 1

  while counter <= n do
    middle = '*' * counter
    puts middle.center(n)
    counter += 2
  end

  counter -= 4

  while counter >= 1 do
    middle = '*' * counter
    puts middle.center(n)
    counter -= 2
  end

  nil
end

diamond(3)
diamond(9)