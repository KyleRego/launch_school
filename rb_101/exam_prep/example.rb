def a_method(param)
  param += " world"
  # param + " world"
  param << " world"
end

str = "hello"
a_method(str)

p str