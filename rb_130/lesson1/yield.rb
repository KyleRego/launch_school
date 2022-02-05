def a_method_with_yield
  yield
  puts "Output from a_method_with_yield"
end

begin
  a_method_with_yield
rescue LocalJumpError
  puts 'A LocalJumpError was thrown'
end

def a_method_with_yield_2
  yield if block_given?
  puts "Output from a_method_with_yield_2"
end

a_method_with_yield_2

def a_method_with_yield_3
  yield('hello world')
end

a_method_with_yield_3 { |block_local_variable| puts block_local_variable }
