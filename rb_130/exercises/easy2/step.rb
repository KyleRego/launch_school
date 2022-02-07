def step(start_, end_, diff_)
  counter = start_
  while counter <= end_
    yield(counter)
    counter += diff_
  end
  start_
end

x = step(1, 10, 3) { |value| puts "value = #{value}" }
p x
