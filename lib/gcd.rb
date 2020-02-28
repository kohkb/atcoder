MOD = 10**9 + 7

def gcd(a, b)
  a, b = b, a if a < b

  while b > 0
    a, b = b, a % b
  end
  a
end

def lcm(a, b)
  a * b / gcd(a, b)
end

# 正しいかは不明
def lcm_inv(a, b)
  a * b *inv(gcd(a, b)) % MOD
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

a, b = gets.chomp.split.map(&:to_i)

puts "#{a}と#{b}の最小公倍数は#{lcm_inv(a,b)}です"
puts "#{a}と#{b}の最小公倍数は#{lcm(a,b) % MOD}です"
puts "#{a}と#{b}の最大公約数は#{gcd(a,b)}です"
