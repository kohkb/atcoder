n = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)


ans = Float::INFINITY

A.min.upto(A.max) do |i|
  tmp = 0
  A.each do |a|
    tmp += (a-i)**2
  end

  ans = [tmp, ans].min
end

puts ans