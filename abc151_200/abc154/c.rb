n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

if h.length == h.uniq.length
  puts 'YES'
else
  puts 'NO'
end
