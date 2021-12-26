def fibonacci(n)
  (n == 1 || n == 2) ? 1 : fibonacci(n-1) + fibonacci(n-2)
end

p fibonacci(20)