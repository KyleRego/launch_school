# input: a number
# output: the sum of all multiples of 3 or 5 that lie between 1 and the input (inclusive)

# make an empty list
# make an inclusive range from 1 to the input and loop over it
#   if the current index is a multiple of 3 or 5 then add it to the list
# return the sum of all numbers in the list

def multisum(top_number)
  multiple_list = []
  (1..top_number).each do |index|
    if index % 3 == 0 || index % 5 == 0
      multiple_list << index
    end
  end
  multiple_list.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168