s = gets.chomp.gsub('BC', 'D')
n = s.length
ans = 0
a_cnt = 0

n.times do |i|
  a_cnt += 1 if s[i] == 'A'
  a_cnt = 0 if s[i] == 'B' || s[i] == 'C'
  ans += a_cnt if s[i] == 'D'
end

puts ans