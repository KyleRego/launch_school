# HELLO = 'hello world'

module SomeModule
  # HELLO = 'hello world'

  def self.a_method_using_a_constant
    puts "The constant is: #{SubClass::HELLO}"
  end
end

class SomeClass
  HELLO = 'hello world'
end

class SubClass < SomeClass ; end

SomeModule.a_method_using_a_constant
