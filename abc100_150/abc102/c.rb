N, K = gets.chomp.split.map(&:to_i)
res = 0

num = Array.new([N, K].max,0)

1.upto(N) do |i|
  num[i%K] += 1
end

K.times do |i|
  a = i % K

  b = (K - a) % K
  c = (K - a) % K

  next unless (b + c) % K == 0
  res += num[a] * num[b] * num[c]
end

p res

