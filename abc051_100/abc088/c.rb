c = []

3.times do
  row = gets.chomp.split.map(&:to_i)
  c << row
end

a = [0]
b = []

b << c[0][0]
b << c[0][1]
b << c[0][2]

a << c[1][0] - b[0]
a << c[2][0] - b[0]


[1,2].each do |i|
  [1, 2].each do |j|
    unless c[i][j] == a[i] + b[j]
      puts 'No'
      exit
    end
  end
end


puts 'Yes'