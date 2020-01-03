n = gets.chop.to_i

f = []

f[0] = 1
f[1] = 1

(2..n).each do |i|
  f[i] = f[i-1] + f[i-2]
end

p f