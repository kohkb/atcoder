N = gets.chomp.to_i

d_max = 0
dl = []
N.times do |i|
  d = gets.chomp.to_i

  dl << d

  d_max = d > d_max ? d : d_max
end


max_ans = dl.inject(:+)
min_ans = max_ans - d_max >= d_max ? 0 : d_max-(max_ans - d_max)

puts max_ans
puts min_ans

