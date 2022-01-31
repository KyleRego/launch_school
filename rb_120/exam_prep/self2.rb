class ExampleClass
  def self.what_is_self_inside_a_class_method
    puts self
  end
end

class ExampleClass2
  def what_is_self_inside_an_instance_method
    puts self
  end
  def to_s
    'this is an instance of ExampleClass2'
  end
end

class ExampleClass3
  puts self
end

ExampleClass.what_is_self_inside_a_class_method

ex_class2 = ExampleClass2.new
ex_class2.what_is_self_inside_an_instance_method

ExampleClass3
