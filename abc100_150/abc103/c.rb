n = gets.chomp.to_i
v = gets.chomp.split.map(&:to_i)

odds = v.each_slice(2).map(&:first)
evens = v.each_slice(2).map(&:last)

h_odd = Hash.new(0)
h_even = Hash.new(0)

odds.each do |val|
  h_odd[val] += 1
end

evens.each do |val|
  h_even[val] += 1
end

h_odd = h_odd.sort_by{ |k, v| -v}
h_even = h_even.sort_by{ |k, v| -v}

# oddとevenの数字が同じなってしまった場合はあとで変更できる？
# それぞれの出現回数をとっておく
# それぞれ一番多いやつに合わせるのが正解
# もし同じときはどっちかが二番目 両方みてminにすれば良さそう

if h_odd[0][0] != h_even[0][0]
  puts (n/2 - h_odd[0][1]) + (n/2 - h_even[0][1])
elsif h_odd.size == 1 && h_even.size == 1
  puts n/2
elsif h_odd.size == 1
  puts n/2 - h_even[0][1]
elsif h_even.size == 1
  puts n/2 - h_odd[0][1]
else
  a = (n/2 - h_odd[0][1]) + (n/2 - h_even[1][1])
  b = (n/2 - h_odd[1][1]) + (n/2 - h_even[0][1])

  puts [a, b].min
end
