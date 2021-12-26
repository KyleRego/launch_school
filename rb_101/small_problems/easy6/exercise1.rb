# multiply the floating point number by a conversion to get the total number of seconds
# determine the number of degrees from that in seconds and subtract it in seconds
# determine the number of minutes in the remainder and subtract it in seconds

require 'pry'

DEGREE = "\xC2\xB0"
SECONDS_PER_DEGREE = 60*60
SECONDS_PER_MINUTE = 60

def dms(angle)
  seconds = (angle*SECONDS_PER_DEGREE).to_i
  degrees = seconds / SECONDS_PER_DEGREE
  seconds = seconds - degrees*SECONDS_PER_DEGREE
  minutes = seconds / SECONDS_PER_MINUTE
  seconds = seconds - minutes*SECONDS_PER_MINUTE
  "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
  