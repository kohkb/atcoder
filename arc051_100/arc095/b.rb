n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

def min(a,b)
  a < b ? a : b
end


def max(a,b)
  a > b ? a : b
end

max_a = a[0]
idx = 0
n.times do |i|

  if a[i] > max_a
    max_a = a[i]
    idx = i
  end
end

max_a = a.max

diff = 0
tmp = 0
num = 0



if n == 2
  puts "#{a.max} #{a.min}"
  exit
end

# puts idx


n.times do |i|
  next if i == idx
  tmp = a[i]
  if a[i] >  max_a/2
    tmp = max_a - a[i]
  end
  # p tmp

  if tmp > diff
    diff = tmp
    num = a[i]
  end
end

puts "#{max_a} #{num}"
