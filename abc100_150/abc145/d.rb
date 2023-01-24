x, y = gets.chomp.split.map(&:to_i)

MOD = 10**9 + 7

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

def inv(x)
  res = 1 # 逆元をどんどんかけるやつ
  beki = x # 逆元を計算したい値のMOD化でのべき乗
  (MOD - 2).to_s(2).reverse.chars do |digest|
    res = (beki * res) % MOD if digest == '1'
    beki = (beki * beki) % MOD
  end
  res
end

if (x + y) % 3 != 0
  puts 0
  exit
end


q = (x+y) / 3


if x < q || y < q
  puts 0
  exit
end

r = x % q

p (comb_inv(q, r)) % MOD



