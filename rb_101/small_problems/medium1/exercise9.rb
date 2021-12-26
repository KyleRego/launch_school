def fibonacci(n)
  first = 1
  second = 1
  return_val = 0
  if n == 1 || n == 2
    first
  else
    3.upto(n) do
      return_val = first + second
      first = second
      second = return_val
    end
    return_val
  end
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075