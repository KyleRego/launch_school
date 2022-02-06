def compute
  return 'Does not compute.' unless block_given?
  yield
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

def compute_2(argument)
  return 'Does not compute.' unless block_given?
  yield(argument)
end

p compute_2('hello world') { |arg| arg } == 'hello world'
p compute_2(5) { |arg| arg**2 } == 25
p compute_2('foo bar') == 'Does not compute.'
