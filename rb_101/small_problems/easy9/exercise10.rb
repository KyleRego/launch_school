# input: an array of 2-element arrays where each 2-element array is a string and number
# the string is a fruit

# ouput: an array of strings where the strings are the strings from the 2-element arrays
# and they appear a number of times equal to the number from their array

# for each array of the input array
# append the first element into the return array a number of times equal to the second element

def buy_fruit(input_array)
  return_array = []
  input_array.each do |two_element_array|
    two_element_array.last.times do
      return_array << two_element_array.first
    end
  end
  return_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]

# the `buy_fruit` method is defined on lines 10-18
# the first thing the method does is initialize `return_array` on line 11 
# and assigns it to be an empty array. Next, the `#each` method is used
# to iterate over `input_array`. Each element of `input_array` is a 2 element
# array, so we call the block parameter `two_element_array`. Each element of
# `input_array` is passed into this block parameter in sequence. Inside the block,
# the `#last` method is used to access the second element of the `two_element_array`
# which is the number, and then the `#times` method is called on that number. The
# block passed into the `#times` method simply appends the first element of the 
# `two_element_array` into `return_array`. Therefore what the code does is for
# each two element array of the input array, the first element of the two element
# array is appended into the return array a number of times equal to the second element
# of the two element array.

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

# the `buy_fruit` method is defined on lines 37-46
# it has one parameter called `list` so the fn takes one argument.
# the method first initializes a local variable `expanded_list` and 
# assigns it the value of an empty list. 
# The `#each` method is then called on the argument to the method, `list`
# this method iterates over each element of the array it is called on, 
# executing the block once per element. In this case the block has a block
# parameter named `item`, so on each iteration, the `item` local variable is
# initialized to the element of `list` being passed into the block on that iteration.
# Inside the block passed to `#each`, two variables are first initialized
# On a single line, fruit is assigned to the first element of item and
# quantity is assigned to the second element of `item`
# then the `#times` method is called on `quantity`, which means that the block passed
# to `#times` will execute a number of times equal to `quantity`. The block simply
# appends `fruit` into `expanded_list` using the `Array#<<`` method. 

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# the `buy_fruit` method is defined on lines 64-66.
# it has a single parameter called `list`
# the `#map` method is called on `list` with a block argument
# this means that each element of `list` will be passed into
# the block. The block has two parameters, and each element of `list`
# is a 2 element array. On each iteration of `#map`, the first block parameter 
# `fruit` is initialized and assigned the first 
# element of the passed in 2 element array, and the second block
# parameter `quantity` is initialized and assigned the second element of the 
# 2 element array.
# On each iteration of `#map`, the return value of the block is the element
# that goes into the return value of `#map`, which is an array.
# The return value of a block is the return value of the last expression in the block.
# In this case, there is only one expression, which evaluates to an array
# containing just the string represented by the local variable `fruit` a number
# of times equal to the `quantity` local variable. The return value of map is thus
# a nested array of arrays where each array has the first element of each 2 element
# array from the input a number of times equal to the second element of each 2 element
# array from the input. The #flatten method is called on this array to un-nest it and
# make it "flat" 