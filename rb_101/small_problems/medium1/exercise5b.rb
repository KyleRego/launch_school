# input: a positive number, always odd, integer n
# output: prints a diamond of height and width n to the screen

# initialize a counter to 1
# while counter <= n / 2
#   print counter number of stars centered in width n
# print n stars
# initialize a counter to 1
# while counter <= n / 2
#   print (n - 2*counter) starts centered in width n

def diamond(n)
  counter = 1
  while counter <= n / 2
    puts ('*'*counter).center(n)
    counter += 2
  end
  puts '*'*n
  counter = 1
  while counter <= n / 2
    puts ('*'*(n-counter*2)).center(n)
    counter += 2
  end
end

diamond(1)

diamond(3)

diamond(7)
