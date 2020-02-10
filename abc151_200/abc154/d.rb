n, k = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)
rs = []
rs[0] = p[0]

1.upto(n - 1) do |i|
  rs << rs[i - 1] + p[i]
end

index = 0
max_num = rs[0]

if n == k
  arr = p
else
  (n - k).times do |i|
    tmp = rs[k + i] - rs[i]

    if tmp > max_num
      max_num = tmp
      index = i
    end
  end

  arr = []
  k.times do |i|
    arr << p[index + i + 1]
  end
end

ans = 0
arr.each do |i|
  ans += (i.to_f + 1) / 2
end

puts ans
