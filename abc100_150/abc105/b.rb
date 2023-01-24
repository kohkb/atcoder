n = gets.chomp.to_i

0.upto(25) do |i|
  0.upto(15) do |j|
    if i * 4 + j * 7 == n
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
