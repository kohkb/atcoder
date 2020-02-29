ONE = '1'.freeze
MOD = (10**9) + 7
# nCrをO(r)で計算するプログラム
# 通常のnCr
def comb(n, r)
  r = n - r if n - r < r
  res = 1

  1.upto(r) do |i|
    # 整数にするため分母がiを維持して計算する
    res = res * (n - r + i)/i
  end
  res
end

# MODを取ってくれるnCr
def comb_inv(n, r)
  res = 1
  i = r
  j = 1
  while i > 0
    res = res * (n-i+1)
    res %= MOD
    j *= i
    j %= MOD
    i -= 1
  end
  res *= inv(j)
  res %= MOD
  res
end

# 繰り返し二乗法
def pow(base,exponent)
  raise ArgumentError if exponent < 0
  # 指数が0の時は結果は1です
  return 1 if exponent==0
  # 結果が出る変数を用意
  result = 1
  # 指数が1なら終了
  while exponent != 1 do
    # 指数が奇数の時、その時の底はここでresultに掛けてしまい、指数を一つ減らす
    if exponent.odd? then
      result *= base
      exponent -= 1
    end
    # 指数を2で割る
    exponent /= 2
    # 底の2乗を新たな底とする
    base *= base
    base = base % MOD
    # 繰り返す
  end
  result *= base
  # 結果を返す
  return result
end

def inv(x)
  res = 1 # 逆元をどんどんかけるやつ
  beki = x # 逆元を計算したい値のMOD化でのべき乗
  (MOD - 2).to_s(2).reverse.chars do |digest|
    res = (beki * res) % MOD if digest == '1'
    beki = (beki * beki) % MOD
  end
  res
end

n, r = gets.chomp.split.map(&:to_i)

puts comb(n, r) % MOD
puts comb_inv(n, r)
