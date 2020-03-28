k,n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

max_l = 0

def max(a,b)
  a > b ? a : b
end


n.times do |i|
  if i == 0
    max_l = max(a[i], max_l)
  else
    max_l = max(a[i] - a[i-1], max_l)
  end
end

last = k - a.last + a[0]

max_l = max(last, max_l)

puts k - max_l
