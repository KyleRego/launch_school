class SomeClass
  @@class_variable = 0

  def self.what_is_class_variable
    puts @@class_variable
  end

end

class AnotherClass < SomeClass
  @@class_variable = 1
end

class YetAnotherClass < SomeClass
  @@class_variable = 2
end

SomeClass.what_is_class_variable
AnotherClass.what_is_class_variable
