n = gets.chomp.to_i

h = Hash.new()
1.upto(n) do |i|
  a = gets.chomp.to_i
  h[i] = a
end

current = 1

1.upto(n) do |i|
  current = h[current]
  next unless current == 2

  puts i
  exit
end

puts -1



