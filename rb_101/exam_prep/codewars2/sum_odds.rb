# input: a positive number n
# output: the sum of n odd numbers such that its the sum of a row of a triangle of odd numbes
# where the first row has 1, the 2nd row has the 3, 5 and 3rd row has 7, 9, 11

def row_sum_odd_numbers(n)
  odds = []
  current_odd = 1
  1.upto(n) do |row|
    array = []
    row.times do
      array << current_odd
      current_odd += 2
    end
    odds << array
  end
  odds[-1].sum
end

p row_sum_odd_numbers(1)
p row_sum_odd_numbers(2)