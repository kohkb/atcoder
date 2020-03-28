n = gets.chomp.to_i
a =  gets.chomp.split.map(&:to_i)

h = Hash.new(0)
ans = 0


n.times do |i|
  # k=0を一旦無視
  next if i == 0

  h[a[i]] += 1
  ans += h[a[i]] - 1


end

base_ans = ans
# k = 1でやったあと、しゃくり方の容量でいけそう
#
n.times do |i|
  ans = base_ans
  if i == 0
    puts ans
    next
  end

  if a[i] == a[0]
    puts base_ans
  else
    ans += (h[a[0]])
    ans -= (h[a[i]] - 1)
    puts ans
  end

end