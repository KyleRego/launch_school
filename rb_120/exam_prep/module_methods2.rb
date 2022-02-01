module SomeModule
  def self.this_is_a_module_method
    puts self
  end

  def self.square_the_argument(n)
    n ** 2
  end
end

SomeModule.this_is_a_module_method

four_squared = SomeModule.square_the_argument(4)
puts four_squared