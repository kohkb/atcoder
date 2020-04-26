a, b,c,d = gets.chomp.split.map(&:to_i)

while 1
  c -= b

  if c <= 0
    puts 'Yes'
    exit
  end

  a -= d

  if a <= 0
    puts 'No'
    exit
  end
end
