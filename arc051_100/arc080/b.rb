H, W = gets.chomp.split.map(&:to_i)
N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

c = Array.new(H).map{Array.new(W, 0)}



arr = []
N.times do |i|
  a[i].times do |j|
    arr << i + 1
  end
end

# p arr

cnt = 0
H.times do |i|
  if i.even?
    0.upto(W-1) do |j|
      c[i][j] = arr[cnt]
      cnt += 1
    end
  else
    (W-1).downto(0) do |j|
      c[i][j] = arr[cnt]
      cnt += 1
    end
  end
end

H.times do |i|
  puts c[i].join(' ')
end
