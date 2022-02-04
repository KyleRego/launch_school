def increment(number)
  if block_given?
    yield(number + 1)
  end
  number + 1
end

increment(5) do |num|
  puts num
end

def test
  yield(1)
end

test do |num1, num2|
  puts "#{num1} #{num2}"
end
