N, K = gets.chomp.split.map(&:to_i)
ans = 0
MOD = 10**9 + 7

def comb(n, r)
  r = n - r if n - r < r
  res = 1

  1.upto(r) do |i|
    # 整数にするため分母がiを維持して計算する
    res = res * (n - r + i)/i
  end
  res
end

ans = Hash.new(0)

1.upto(K) do |i|
  break if N- K + 1 < i


  ans[i] = comb(N-K+1, i) * comb(K-1, i - 1) % MOD
end


1.upto(K) do |i|
  puts ans[i]
end
