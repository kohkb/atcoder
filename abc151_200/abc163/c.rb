n =  gets.chomp.to_i
  a =  gets.chomp.split.map(&:to_i)

  h = Hash.new(0)


  a.each do |row|
    h[row] += 1
  end

  1.upto(n) do |i|
    puts h[i]
  end