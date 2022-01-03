def solution(str, ending)
  str.end_with?(ending)
end

p solution('abc', 'bc')
p solution('abc', 'd')
