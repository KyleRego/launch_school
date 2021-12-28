require 'pry'

def bubble_sort!(arr)
  loop do
    number_sorts = 0
    counter = 0
    loop do
      element1 = arr[counter]
      element2 = arr[counter+1]
      if element2 < element1
        arr[counter+1] = element1
        arr[counter] = element2
        number_sorts += 1
      end
      counter += 1
      break if counter + 1 == arr.size
    end
    break if number_sorts == 0
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)