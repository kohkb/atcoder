# nCrをO(r)で計算するプログラム
# TODO:MOD対応
def comb(n, r)
  r = n - r if n - r < r
  res = 1

  1.upto(r) do |i|
    # 整数にするため分母がiを維持して計算する
    res = res * (n - r + i)/i
  end
  res
end

n, r = gets.chomp.split.map(&:to_i)

puts comb(n, r)
