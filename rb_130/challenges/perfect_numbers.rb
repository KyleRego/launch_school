class PerfectNumber
  def self.classify(number)
    raise StandardError unless number.positive? && number.class == Integer

    sum = aliquot_sum(number)
    if sum > number
      'abundant'
    elsif sum < number
      'deficient'
    elsif sum == number
      'perfect'
    end
  end

  # set counter = 1
  # set sum = 0
  # while counter less than number
  # add counter to a sum if number % counter == 0

  def self.aliquot_sum(number)
    counter = 1
    sum = 0
    while counter < number
      sum += counter if (number % counter).zero?
      counter += 1
    end
    sum
  end
end

puts PerfectNumber.classify(6)
puts PerfectNumber.classify(28)
puts PerfectNumber.classify(15)
puts PerfectNumber.classify(24)
puts PerfectNumber.classify(7)
