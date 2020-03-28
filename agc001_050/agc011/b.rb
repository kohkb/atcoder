n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

a =  a.sort

ll = []
ll[0] = a[0]

n.times do |i|
  next if i == 0

  ll[i] = ll[i-1] + a[i]
end

ans = n



ll.reverse!

0.upto(n-2) do |i|
  next if ll[i] - ll[i+1] <= ll[i+1] * 2

  ans = i + 1
  break

end

puts ans
