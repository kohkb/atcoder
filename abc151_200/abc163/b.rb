n,m =  gets.chomp.split.map(&:to_i)
a =  gets.chomp.split.map(&:to_i)

tmp = a.inject(:+)

if tmp > n
  puts -1
else
  puts n-tmp
end





