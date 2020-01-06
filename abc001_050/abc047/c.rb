s = gets.chop

ans = 0
prev = s[0]

1.upto(s.length-1) do |i|
  ans += 1 unless s[i] == prev
  prev = s[i]
end

p ans