# input: an array
# output: the array, sorted

# start a loop
# set made_a_change to false
# set counter equal to 0
#   start a loop
#     check if arr[counter] > arr[counter+1]
#       if so, switch them
#       reassign made_a_change equal to true
#     incremenet counter
#     break if counter + 1 == length of array
# break if !made_a_change

def bubble_sort!(array)
  loop do
    made_a_change = false
    counter = 0
    loop do
      if array[counter] > array[counter+1]
        array[counter], array[counter+1] = array[counter+1], array[counter]
        made_a_change = true
      end
      counter += 1
      break if counter + 1 == array.length
    end
    break if ! made_a_change
  end
  array
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