require 'prime'

n = gets.chomp.to_i
MOD = 10**9 + 7

h = Hash.new(0)

1.upto(n) do |i|
  arr = i.prime_division
  arr.each do |k,v|
    h[k] += v
  end
end

ans = 1

h.each do |k, v|
  ans = ans * (v + 1) % MOD
end

p ans