n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
idx = 0
a =  a.sort

double_tmp_sum = 0

0.upto(n-2) do |i|
  double_tmp_sum += 2 * a[i]

  idx = i + 1 if double_tmp_sum < a[i+1]
end

puts n - idx

