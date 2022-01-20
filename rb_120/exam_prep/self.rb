class ExampleClass
  puts self
end

ExampleClass

class AnotherExampleClass
  def what_is_self
    puts self
  end
end

example = AnotherExampleClass.new
example.what_is_self
