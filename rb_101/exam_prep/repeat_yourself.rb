def repeat(string, number)
  number.times { puts string }
end

repeat('Hello', 3)

# on line 5, the `repeat` method is invoked with two arguments: 
# the first argument is a string `Hello` and the second argument
# is an integer. On lines 1-3 the `repeat` method is defined.
# It takes two arguments: `string` and `number`
# Therefore on line 1 the local variable string is initialized and assigned the 
# value of `Hello` and the local variable `number` is initialized and assigned
# the value of 3.
# the Integer#times method is then called on `number` with a block argument.
# the `#times` method executes the block a number of times equal to the integer
# it is called on, so the block is called three times.
# the block has one expression, the Kernel#puts method which outputs `string`
# to the standard out and returns nil, however #times does not care about the
# return value of the block