n,a,b = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

ans = 0

def min(a,b)
  a < b ? a : b
end

(n-1).times do |i|
  ans += min((x[i+1]-x[i])*a,b)
end

puts ans