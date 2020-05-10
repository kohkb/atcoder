n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
n.times do |i|
  n.times do |j|
    ans = [ans, (a[i]-a[j]).abs].max
  end
end

p ans
