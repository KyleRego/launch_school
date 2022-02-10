class SumOfMultiples
  def initialize(*nums)
    @nums = nums
  end

  def to(number)
    SumOfMultiples.to(number, *@nums)
  end
  # use a brute force algorithm
  # set sum equal to 0
  # for each num in nums
  # set counter = num
  # while counter < integer
  #   add counter to sum
  #   increment counter by num
  # return sum

  def self.to(integer, *nums)
    nums = [3, 5] if nums.empty?
    sum = 0
    already_added_multiples = []
    nums.each do |num|
      counter = num
      while counter < integer
        sum += counter unless already_added_multiples.include?(counter)
        already_added_multiples << counter
        counter += num
      end
    end
    sum
  end
end
