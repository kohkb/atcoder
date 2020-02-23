n = gets.chomp.to_i

h = Hash.new(0)

last_char = ''

n.times do |i|
  w = gets.chomp

  h[w] += 1

  if h[w] > 1
    puts i.odd? ? 'WIN' : 'LOSE'
    exit
  end

  unless i == 0
    unless last_char == w[0]
      puts i.odd? ? 'WIN' : 'LOSE'
      exit
    end
  end

  last_char = w[-1]
end

puts 'DRAW'
