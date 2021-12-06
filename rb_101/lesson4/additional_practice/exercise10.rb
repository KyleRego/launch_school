munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  age = value["age"]
  if age >= 0 && age <= 17
    value["age_group"] = "kid"
  elsif age >= 18 && age <= 64
    value["age_group"] = "adult"
  elsif age >= 65
    value["age_group"] = "senior"
  end
end

p munsters