n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

def gcd(a, b)
  a, b = b, a if a < b

  while b > 0
    a, b = b, a % b
  end
  a
end

# 最大公約数の倍数の数値は作れる
if a.max < k
  puts 'IMPOSSIBLE'
  exit
end

gcd = a[0]

n.times do |i|
  gcd = gcd(a[i], gcd)
end

 puts k % gcd == 0 ? 'POSSIBLE' : 'IMPOSSIBLE'