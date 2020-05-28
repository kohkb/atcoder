N = gets.chomp.to_i

flag = true

h = Hash.new(false)
w = []
N.times do |i|
  w << gets.chomp

  if h[w[i]]
    flag = false
  end

  h[w[i]] = true

  next if i == 0

  if w[i-1][-1] != w[i][0]
    flag = false
  end
end

puts flag ? 'Yes' : 'No'
