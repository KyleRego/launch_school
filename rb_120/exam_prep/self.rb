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

class AnotherExample

  def self.what_is_self_inside_a_class_method
    puts self
  end
end

AnotherExample.what_is_self_inside_a_class_method