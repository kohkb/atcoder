n = gets.chomp.to_i

ret = []

(n-153).upto(n) do |i|
  next if i <= 0

  digit_sum = 0

  i.to_s.chars.each do |num|
    digit_sum += num.to_i
  end

  ret << i if digit_sum + i == n
end

puts ret.size
puts ret