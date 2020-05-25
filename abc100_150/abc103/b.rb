s = gets.chomp.chars
t = gets.chomp

n = s.length

(n+2).times do
  c = s.shift

  s << c

  if s.join == t
    puts 'Yes'
    exit
  end
end

puts 'No'
