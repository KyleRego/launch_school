contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

helper_array = [:email, :address, :phone]

helper_array.each_with_index do |value, index|
  contacts["Joe Smith"][value] = contact_data[index]
end

puts contacts