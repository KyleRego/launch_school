# input: an array of integers
# output: the one integer in the array which appears an odd number of times

# iterate through the array of integers
#   if the count of the current integer in the array is 1 then return it


def find_it(seq)
  seq.each do |number|
    return number if seq.count(number) == 1
  end
end