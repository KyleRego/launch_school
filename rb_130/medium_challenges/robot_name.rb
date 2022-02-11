class Robot
  @@already_used_names = []

  attr_reader :name

  def initialize
    assign_name
  end
  
  def reset
    @@already_used_names.delete(@name)
    assign_name
  end

  private

  def assign_name
    name = random_name
    while @@already_used_names.include?(name)
      name = random_name
    end
    @name = name
    @@already_used_names << name
  end
  
  def random_name
    alphabet = ('A'..'Z').to_a 
    digits = ('0'..'9').to_a
    name = ''
    2.times { name << alphabet.sample }
    3.times { name << digits.sample }
    name
  end
end