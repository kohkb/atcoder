# いもす法の典型問題
n, q = gets.chomp.split.map(&:to_i)

# １つ大きな配列を作っておく
imos = Array.new(n+1, 0)

q.times do
  l,r = gets.chomp.split.map(&:to_i)

  imos[l-1] += 1
  imos[r] -= 1
end

ans = ''
c = 0
n.times do |i|
  c += imos[i]
  ans << (c.odd? ? '1' : '0')
end

puts ans


