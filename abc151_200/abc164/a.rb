s, w= gets.chomp.split.map(&:to_i)

if w >= s
  puts 'unsafe'
else
  puts 'safe'
end
