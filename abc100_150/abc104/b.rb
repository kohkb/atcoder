s = gets.chomp
n = s.length
flag = true

flag = false if s[0] != 'A'
flag = false if [*'A'..'Z'].include?(s[1])

c_cnt = 0
2.upto(n-2) do |i|
  c_cnt += 1 if s[i] == 'C'

  flag = false if c_cnt > 1 || [*'A'..'Z'].include?(s[1])
end

flag = false if c_cnt == 0

flag = false if s[n-1] == 'C'
flag = false if [*'A'..'Z'].include?(s[n-1])

puts flag ? 'AC' : 'WA'
