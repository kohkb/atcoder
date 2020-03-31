n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

s = []
s[0] = 0

1.upto(n) do |i|
  s[i] = s[i-1] + a[i-1]
end

h = Hash.new(0)
ans = 0

s.each do |val|
  h[val] += 1
  ans += h[val] - 1
end

p ans