def my_method(array)
  yield(array)
end

my_method do |_, _, *raptors|
  puts raptors
end
