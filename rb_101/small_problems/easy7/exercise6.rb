
def staggered_case(a_string)
  capital = true
  return_string = ''
  a_string.each_char do |char|
    if !(('a'..'z').to_a + ('A'..'Z').to_a).include?(char)
      return_string << char
      next
    elsif capital
      return_string << char.upcase
      capital = !capital
    else
      return_string << char.downcase
      capital = !capital
    end
  end
  return_string
end
  

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'