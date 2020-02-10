s,t = gets.chomp.split
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp

if u == t
  puts a
  puts b -1
else
  puts a - 1
  puts b
end

