# a method that returns the sum of two integers

# return integer1 + integer2

def sum_two_integers(one, two)
  one + two
end

# a method that takes an array of strings, and returns a string that is all those string concatenated together

# START
# SET return_value = ''
# SET iterator = 0
# WHILE iterator < length of array of strings
#   SET return_value += string at location 'iterator' of array of strings
# PRINT return_value

def concatenate_strings(array_of_strings)
  return_value = ''
  array_of_strings.each { |string| return_value += string }
  return_value
end

p concatenate_strings(['hello', 'world'])

# a method that takes an array of integers, and returns a new array with every other element

# SET return_array = []
# SET counter = 0
# WHILE counter < length of array of integers
#    return_array << array of integers[counter] if counter.even?

def every_other(arr)
  return_arr = []
  counter = 0
  while counter < arr.length
    return_arr << arr[counter] if counter.even?
    counter += 1
  end
  return_arr
end

p every_other([1, 2, 3, 4, 5])