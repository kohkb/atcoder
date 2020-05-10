N, H = gets.chomp.split.map(&:to_i)
b = []
a_max = 1

N.times do
  a_i, b_i = gets.chomp.split.map(&:to_i)

  a_max = a_i > a_max ? a_i : a_max
  b << b_i
end

# a_max以下のものは取り除く
b = b.select{ |num| num >= a_max }.sort.reverse

ans = 0
dmg = 0

b.size.times do |i|
  dmg += b[i]
  ans += 1

  break if dmg >= H
end

rest = H - dmg

if rest > 0
  p ans + (rest.to_f/a_max).ceil.to_i
else
  p ans
end

