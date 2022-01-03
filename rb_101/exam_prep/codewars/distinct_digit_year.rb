# input: a posiive number representing a year
# output: the next year after the input which has all unique digits

# to determine if a number has all unique digits
# convert the number to a string
# split the string into an array
# see if the array of unique elements is the same size as the original array

# to find the next year after input year with all unique digits
# initialize a variable called new_year to be input + 1
# start a loop
# check if new_year has all unique digits, if so return it
# else incremenet new_year by 1

def distinct_digit_year(year)
  new_year = year + 1
  loop do
    return new_year if unique_digits(new_year)
    new_year += 1
  end
end

def unique_digits(number)
  array = number.to_s.split('')
  array.uniq.size == array.size
end

p unique_digits(11)
p unique_digits(1234)

p distinct_digit_year(1987)