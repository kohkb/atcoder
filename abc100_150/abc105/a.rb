n, k = gets.chomp.split.map(&:to_i)
if n % k == 0
  puts 0
else
  puts 1
end