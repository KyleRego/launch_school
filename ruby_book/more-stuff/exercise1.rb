def does_contain_lab?(a_string)
  if a_string =~ /lab/
    puts a_string
  end
end

does_contain_lab?("laboratory")
does_contain_lab?("experiment")
does_contain_lab?("Pans Labyrinth")
does_contain_lab?("elaborate")
does_contain_lab?("polar bear")