N = gets.chop.to_i
H = gets.chop.split.map(&:to_i)

1.upto(N-1) do |i|
  if H[i-1] - H[i] > 1
    puts 'No'
    exit
  elsif H[i-1] - H[i] == 1
    H[i] += 1
  end
end

puts 'Yes'

