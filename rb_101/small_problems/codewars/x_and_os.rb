def XO(str)
  str = str.downcase
  str.count('x') == str.count('o')
end

p XO('hello world')
p XO('xx oo')