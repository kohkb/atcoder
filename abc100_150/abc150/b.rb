n = gets.chomp.to_i
s = gets.chomp

s.gsub!('ABC', 'r')

ans = 0
s.each_char do |c|
  ans += 1 if c == 'r'
end

puts ans