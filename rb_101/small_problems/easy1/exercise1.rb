# set counter equal to 0
# while counter is less than given positive integer
# print the string
# increment the counter
# stop when the counter is equal to the given positive integer

def repeat(string, integer)
  counter = 0
  while counter < integer
    puts string
    counter += 1
  end
end

def repeat2(string, integer)
  integer.times do 
    puts string
  end
end

repeat('Hello', 3)

repeat2("World", 3)
