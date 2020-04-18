arr = gets.chomp.chars
n = arr.length


n.times do |i|
  if arr[i] == '9'
    arr[i] = '1'
  elsif arr[i] == '1'
    arr[i] = '9'
  end
end

puts arr.join.to_i