n, k = gets.chomp.split.map(&:to_i)
r = gets.chomp.split.map(&:to_i)

l = r.sort.reverse.slice(0, k).reverse

ans = 0.to_f

l.each do |num|
  ans = (ans + num)/2
end

p ans