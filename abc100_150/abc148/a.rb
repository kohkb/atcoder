A = gets.chomp.to_i
B = gets.chomp.to_i

arr = [1,2,3]

arr.each do |i|
  puts i if i != A && i != B
end

