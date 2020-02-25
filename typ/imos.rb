# いもす法の典型問題
# https://atcoder.jp/contests/abc035/tasks/abc035_c
n, q = gets.chomp.split.map(&:to_i)

# Nより１つ大きな配列を作っておく
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
  # <<のほうが+=より早い
  ans << (c.odd? ? '1' : '0')
end

puts ans


