n = gets.chomp.to_i
s = gets.chomp
h  = Hash.new(0)

n.times do |i|
  h[s[i]] += 1
end

MOD = 10**9 + 7
ans = 1
h.each do |k,v|
  ans *= (v + 1) % MOD
end

puts (ans - 1)%MOD
