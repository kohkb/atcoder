n = gets.chomp.to_i
s, t = gets.chomp.split.map(&:chars)

ans = ''

n.times do
  ans << s.shift
  ans << t.shift
end

puts ans