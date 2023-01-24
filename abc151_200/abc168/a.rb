N = gets.chomp.chars

num = N[-1].to_i

if num == 3
  puts 'bon'
elsif [0,1,6,8].include?(num)
  puts 'pon'
else
  puts 'hon'
end
