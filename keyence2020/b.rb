n = gets.chomp.to_i
ll = []

n.times do
  x, l = gets.chomp.split.map(&:to_i)
  ll << [x - l, x + l]
end

ll.sort_by!{ |x| x[1]}

ans = 1
prev = ll[0][1]

1.upto(n-1) do |i|
  if prev <= ll[i][0]
    ans += 1
    prev = ll[i][1]
  end
end

p ans
