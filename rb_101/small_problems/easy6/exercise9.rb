# iterate over the elements of the array
#   check each element if it is equal to the search value
#   if it is, return true
# return false

def include?(an_array, search_value)
  an_array.each do |value|
    return true if value == search_value
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false