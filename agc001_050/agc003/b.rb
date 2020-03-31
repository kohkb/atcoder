n = gets.chomp.to_i
ans = 0
prev = 0

n.times do |i|
  a = gets.chomp.to_i

  ans += (prev + a)/2
  prev = (prev + a) % 2


  prev = 0 if a == 0

end

puts ans