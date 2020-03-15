a, b, c = gets.chomp.split.map(&:to_i)

if c - a - b <= 0
  puts 'No'
  exit
end

right = (c - a - b) ** 2
left =  4 * a * b



if right > left
  puts 'Yes'
else
  puts 'No'
end