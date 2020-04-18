n = gets.chomp.to_i

m = Math.sqrt(n).to_i
l = []

1.upto(m) do |i|
  if n % i == 0
    l << i
    l << n / i unless n / i ==  i
  end
end


sum_divisor = l.inject(:+) - n


if sum_divisor == n
  puts 'Perfect'
elsif sum_divisor > n
  puts 'Abundant'
else
  puts 'Deficient'
end
