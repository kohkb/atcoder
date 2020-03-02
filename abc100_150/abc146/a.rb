s = gets.chomp

weeks = %w[SUN MON TUE WED THU FRI SAT]

n = weeks.find_index(s)
p 7 - n