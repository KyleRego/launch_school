module Speak
  def speak(arg)
    puts arg
  end
end

class GoodDog
  include Speak
end

maisie = GoodDog.new
maisie.speak('Hello')
