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
  return result % MOD
end
MOD = 998244353
n,m,k = gets.chomp.split.map(&:to_i)

# K組までのm*(m-1)を計算
# 1~n-1を計算しておいて、最後からk+1個を使えば良い
memo = [m%MOD]
1.upto(n-1) do |i|
  memo[i] = memo[i-1] * (m-1) % MOD
end

ans = memo.last

def set_fac(n)
  1.upto(n-1) do |i|
    @fac[i] = @fac[i-1] * i % MOD
  end

  # 最も大きいのは最後のやつ
  # mod pにおけるaの逆元はa^(p-2)つまり mod pの状況で bで割ってから pのあまりというのはb^(p-2)をかけるのに等しい
  @rfac[-1] = pow(@fac[-1], MOD - 2)
  (n-2).downto(0) do |i|
    @rfac[i] = @rfac[i+1] * (i+1) % MOD
  end
end

@fac = Array.new(n, 1)
@rfac = Array.new(n)

set_fac(n)

1.upto(k) do |i|
  ans += memo[n-i-1] * @fac[n-1] * @rfac[i] * @rfac[n-i-1] % MOD
end

p ans % MOD


