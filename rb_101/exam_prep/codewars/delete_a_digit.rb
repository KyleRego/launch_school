# input: an integer n
# output: maximal number obtained by deleting exactly one digit of the given number

# make an array of all the numbers obtained by deleting one digit from n
# return the max from that array

# how to make an array of all numbers obtained by deleting one digit from n
# convert n to a string string_n
# append string_n into an empty array arr
# multiply arr by string_n.length
# set a i equal to 0
# start a loop
#   delete the ith digit from the arr[i] string
#   oncrement i
#   break from the loop is counter is equal to length of arr
# map the arr to numbers and return the max

require 'pry'

def delete_digit(n)
  string_n = n.to_s
  arr = []
  arr << string_n
  arr *= string_n.length

  i = 0
  loop do
    new_str = arr[i].chars
    new_str.delete_at(i)
    arr[i] = new_str.join
    i += 1
    break if i == arr.length
  end
  arr.map(&:to_i).max
end

p delete_digit(1234)
  