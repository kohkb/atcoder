h, w = gets.chomp.split.map(&:to_i)

c = []
10.times do
  c << gets.chomp.split.map(&:to_i)
end


def min(a,b)
  a < b ? a : b
end


10.times do |k|
  10.times do |i|
    10.times do |j|
      c[i][j] = min(c[i][j], c[i][k] + c[k][j])
    end
  end
end


ans = 0
h.times do
  row = gets.chomp.split.map(&:to_i)

  row.each do |val|
    next if val == -1
    ans += c[val][1]
  end
end

puts ans