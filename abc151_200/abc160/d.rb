n, x, y = gets.chomp.split.map(&:to_i)

h = Hash.new(0)

def min(a,b)
  a < b ? a : b
end

# iとjの距離
1.upto(n) do |i|
  i.upto(n) do |j|
    next if i == j
    len = min(min((j-i).abs, (x-i).abs + 1 + (y-j).abs), (x-j).abs + 1 + (y-i).abs)
    h[len] += 1
  end
end

(n-1).times do |i|
  puts h[i+1]
end





