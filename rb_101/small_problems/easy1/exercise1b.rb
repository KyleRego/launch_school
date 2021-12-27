# input: a string and a positive integer
# output: prints the string as many times as the positive integer

def repeat(string, number)
  number.times { puts string }
end

repeat('Hello', 3)