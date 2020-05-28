N = gets.chomp.to_i

a = gets.chomp.split.map(&:to_i)
l = a.max.to_s(2).length

MOD = 10**9 + 7
ans = 0
(l+1).times do |i|
  n0 = a.count{ |x| x[i] == 0}

  # 全体のうちi桁目が0でないものは1であるため
  n1 = a.size - n0

  ans += n0*n1*2**i
  ans %= MOD
end

p ans
